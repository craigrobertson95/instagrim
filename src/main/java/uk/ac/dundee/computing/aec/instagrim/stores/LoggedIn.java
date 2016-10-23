/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.aec.instagrim.stores;

/**
 *
 * @author Administrator
 */
public class LoggedIn {
    public boolean loggedin=false;
    String Username=null;
    public void loggedIn(){
        
    }
    
    public void setUsername(String name){
        this.Username=name;
    }
    public String getUsername(){
        return Username;
    }
    public void setloggedin(){
        loggedin=true;
    }
    public void setloggedout(){
        loggedin=false;
    }
    
    public void setLoginState(boolean loggedin){
        this.loggedin=loggedin;
    }
    public boolean getloggedin(){
        return loggedin;
    }
}
