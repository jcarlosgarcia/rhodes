package com.rho.<%= namefixed %>;

import java.util.LinkedList;
import java.util.List;

import com.rhomobile.rhodes.api.IMethodResult;

class <%= namecamelcase %>Singleton extends <%= namecamelcase %>SingletonBase implements I<%= namecamelcase %>Singleton {
    public <%= namecamelcase %>Singleton(<%= namecamelcase %>Factory factory) {
        super(factory);
    }

    List<String> getIDs() {
        List<String> ids = new LinkedList<String>();
        ids.add("SCN1");
        ids.add("SCN2");
        return ids;
    }
    
    @Override
    protected String getInitialDefaultID() {
        return getIDs().get(0);
    }

    @Override
    public void enumerate(IMethodResult res) {
        res.set(getIDs());
    }
}