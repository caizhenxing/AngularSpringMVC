package com.somecode.domain;

/**
 * Created by vharutyunyan on 20.06.2014.
 */
public class RequestObj {
    private DataParams dataParams;
    private SecurityParams securityParams;
    private boolean withCredentials;

    public boolean isWithCredentials() {
        return withCredentials;
    }

    public void setWithCredentials(boolean withCredentials) {
        this.withCredentials = withCredentials;
    }

    public SecurityParams getSecurityParams() {
        return securityParams;
    }

    public void setSecurityParams(SecurityParams securityParams) {
        this.securityParams = securityParams;
    }

    public DataParams getDataParams() {
        return dataParams;
    }

    public void setDataParams(DataParams dataParams) {
        this.dataParams = dataParams;
    }
}
