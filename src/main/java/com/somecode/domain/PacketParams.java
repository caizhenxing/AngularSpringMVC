package com.somecode.domain;

import java.util.List;

/**
 * Created by alexc_000 on 2016-08-13.
 */
public class PacketParams {
    private Long id;
    private Long stateId;
    private List<ComptParams> comptParamsList;

    public List<ComptParams> getComptParamsList() {
        return comptParamsList;
    }

    public PacketParams setComptParamsList(List<ComptParams> comptParamsList) {
        this.comptParamsList = comptParamsList;
        return this;
    }

    public Long getStateId() {
        return stateId;
    }

    public PacketParams setStateId(Long stateId) {
        this.stateId = stateId;
        return this;
    }

    public Long getId() {

        return id;
    }

    public PacketParams setId(Long id) {
        this.id = id;
        return this;
    }
}