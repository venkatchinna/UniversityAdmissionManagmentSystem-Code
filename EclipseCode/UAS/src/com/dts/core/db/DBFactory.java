package com.dts.core.db;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.model.AbstractDataObject;

/**
 *
 * @author
 */
public class DBFactory {
	
    public DBFactory() 
    {
    	new AbstractDataAccessObject().getConnection();
    }	
}
