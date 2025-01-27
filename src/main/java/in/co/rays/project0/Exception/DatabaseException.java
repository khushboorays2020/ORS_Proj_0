package in.co.rays.project0.Exception;

/**
 * DatabaseException is propogated by DAO classes when an unhandled Database
 * exception occurred
 * 
 * @author Strategy
 * @version 1.0
 * @Copyright (c) SunilOS
 */
public class DatabaseException extends Exception {

    /**
     * @param msg
     *            : Error message
     */
    public DatabaseException(String msg) {
        super(msg);
    }

}