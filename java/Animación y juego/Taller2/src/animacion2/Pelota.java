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
public class Pelota{
    int x,y,h,w;
    int dx,dy;
    Color color;
    Graphics g;

    public Pelota(int x, int y, int h, int w, Color color,int dx,int dy) {
        this.x = x;
        this.y = y;
        this.h = h;
        this.w = w;
        this.color = color;        
        this.dx=dx;
        this.dy=dy;
    }
    
    public Rectangle getRectangle(){
        return new Rectangle(x, y , w, h);
    }
    
    public void dibujar(Graphics g){
        g.setColor(color);
        g.fillOval(x, y, w, h);        
    }
    
    
}
