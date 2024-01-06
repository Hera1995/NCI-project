package com.nci.filmreview.api.dot;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;

import java.io.IOException;
import java.util.Date;


public class CustomDateDeserializer extends JsonDeserializer<Date> {

    //1. get a long type timestamp from JsonParser
    //2. multiply the timestamp by 1000 to get the timestamp in milliseconds
    @Override
    public Date deserialize(JsonParser jsonParser, DeserializationContext ctxt) throws IOException {
        long timestamp = jsonParser.getLongValue();
        return new Date(timestamp * 1000);
    }
}
