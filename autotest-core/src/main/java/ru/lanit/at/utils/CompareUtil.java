package ru.lanit.at.utils;

import java.math.BigDecimal;
import java.text.NumberFormat;
import java.text.ParseException;

public class CompareUtil {

    public static boolean compare(String firstValue, String secondValue, String operator) {
        if (isNumeric(firstValue) && isNumeric(secondValue)) {
            return compareNumbers(firstValue, secondValue, operator);
        } else {
            return compareStrings(firstValue, secondValue, operator);
        }
    }

    private static boolean compareStrings(String firstValue, String secondValue, String operator) {
        switch (operator.toLowerCase()) {
            case "равно":
            case "==":
                return firstValue.equals(secondValue);
            case "не равно":
            case "!=":
                return !firstValue.equals(secondValue);
            case "содержит":
                return firstValue.contains(secondValue);
            case "не содержит":
                return !firstValue.contains(secondValue);
            default:
                throw new IllegalArgumentException(String
                        .format("Параметр '%s' является неверным для метода '%s'.", operator, "compareStrings"));
        }
    }

    private static boolean compareNumbers(String firstValue, String secondValue, String operator) {
        BigDecimal number1 = new BigDecimal(firstValue);
        BigDecimal number2 = new BigDecimal(secondValue);
        switch (operator.toLowerCase()) {
            case "равно":
            case "==":
                return number1.equals(number2);
            case "не равно":
            case "!=":
                return !number1.equals(number2);
            case "больше":
            case ">":
                return number1.compareTo(number2) > 0;
            case "меньше":
            case "<":
                return number1.compareTo(number2) < 0;
            default:
                throw new IllegalArgumentException(String
                        .format("Параметр '%s' является неверным для метода '%s'.", operator, "compareNumbers"));
        }
    }

    private static boolean isNumeric(String strNum) {
        if (strNum == null) {
            return false;
        }
        try {
            Double.parseDouble(strNum);
            NumberFormat.getInstance().parse(strNum);
        } catch (NumberFormatException | ParseException nfe) {
            return false;
        }
        return true;
    }
}
