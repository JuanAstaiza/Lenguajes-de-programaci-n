/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package animacion2;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Rectangle;

/**
 *
 * @author Asus
 */
public class Ladrillo extends Rectangle{
    int h,w;
    Color c;
    public Ladrillo(int x, int y, int w, int h, Color c) {
        super(x, y, w, h);
        this.c=c;
    }
    
    public void dibujar(Graphics g){
        g.setColor(c);
        g.fillRect((int)getX(), (int)getY(), (int)getWidth(), (int)getHeight());
    }

    
}
