package org.apimenov.applet.ui;

import javax.swing.*;
import java.applet.Applet;
import java.awt.*;

/**
 * Created by dagon on 01.04.2015.
 */
public class HelloApplet extends Applet {


    public HelloApplet(){

    }

    public void setupUI(){
        setLayout(new BoxLayout(this, BoxLayout.Y_AXIS));
        add(new JLabel("Hello,this string is displayed if you successfully run applet!"));
        String url = getParameter("requestURL");
        if(url!=null){
            add(new JLabel("Yaw! Request URL is: " + url));
        }
    }

    @Override
    public void start() {
        super.start();
        setupUI();
    }
}
