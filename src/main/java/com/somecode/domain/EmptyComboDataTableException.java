/*
 * Copyright (c) 2016.  Alex Chulkin
 */

package com.somecode.domain;

/**
 * The custom database exception used to indicate the problems with the empty COMBO_DATA database table.
 * @version 1.0
 */
public class EmptyComboDataTableException extends EmptyDBTableException {
    private static final String DELIMITER = ". ";

    /**
     * Returns the message containing the info about the exception. Used for logging.
     *
     * @return the message containing the info about the exception.
     */
    @Override
    public String getMessage() {
        return ComboData.class.getSimpleName() + DELIMITER + super.getMessage();
    }
}
