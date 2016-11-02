/*
 * Copyright (c) 2016.  Alex Chulkin
 */

package com.somecode.domain;

/**
 * Created by alexc_000 on 2016-10-23.
 */
public enum PacketDaoErrorType {
    NONE,
    NOT_EXISTING_THE_ONLY_PACKET_ID,
    NOT_EXISTING_ONE_OF_PACKET_IDS,
    NULL_NEW_STATE_ID,
    NOT_EXISTING_STATE_ID,
    NOT_DIFFERENT_NEW_STATE_ID,
    NONE_OF_THE_COMPT_IDS_EXIST,
    SOME_OF_THE_COMPT_IDS_EXIST,
    AUTHENTICATION_ERROR
}