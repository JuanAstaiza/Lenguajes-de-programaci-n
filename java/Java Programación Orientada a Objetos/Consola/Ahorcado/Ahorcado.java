import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;



public class Ahorcado extends JFrame implements ActionListener
{	
    Pintar panelGrafico;
    Palabras p;
    JPanel panelPrincipal;
    JButton botonReIniciar;
    JButton botonIniciar;
    JButton botonValidarLetra;
    JButton botonSalir;
    JLabel etiqueta,etiqueta2,etiqueta3;
    JTextField letra;
    JTextField palabra;
    int vidas;
    
	
	Ahorcado(String tit){		
            super(tit);
            setLayout(new BorderLayout(1,1));
            setSize(600,400);
            agregarElementos();
            setVisible(true);
            setResizable(false);
            setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); 
            vidas = 0;
        }
	


    public void agregarElementos(){
        //Panel donde se dibujara 
        panelGrafico = new Pintar();
        panelGrafico.setBackground(Color.CYAN);
		panelGrafico.setBorder(BorderFactory.createLineBorder(Color.black));

        add(panelGrafico,BorderLayout.CENTER);
        
        //Panel donde estaran los elementos
        panelPrincipal = new JPanel();
        panelPrincipal.setBackground(Color.GREEN);
        panelPrincipal.setLayout(null);
        
        botonReIniciar = new JButton("Reiniciar Juego");
		botonReIniciar.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
		botonReIniciar.setBackground(Color.YELLOW);


        botonIniciar = new JButton("Iniciar Juego");
		botonIniciar.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
		botonIniciar.setBackground(Color.YELLOW);


        botonValidarLetra = new JButton("Validar Letra");
		botonValidarLetra.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
		botonValidarLetra.setBackground(Color.CYAN);

		
        botonSalir = new JButton("SALIR");
		botonSalir.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
		botonSalir.setBackground(Color.RED);


        
        etiqueta = new JLabel("Palabra:");
		etiqueta2 = new JLabel("Letra:");
		etiqueta3 = new JLabel("***** MENU PRINCIPAL ****");


        palabra = new JTextField("");
        palabra.setEnabled(false);
        palabra.setForeground(new Color(255, 0, 0));

        letra = new JTextField("");
        
        //Colocando elementos en el panel
		etiqueta3.setBounds(432,11,200,30);
        botonReIniciar.setBounds(430,50,150,30);
        botonIniciar.setBounds(430,100,150,30);
        botonSalir.setBounds(430,150,150,30);
        
        etiqueta.setBounds(300,320,100,30);
		etiqueta2.setBounds(190,299,100,30);
        palabra.setBounds(350,320,150,30);
        
        
        
        letra.setBounds(180,320,50,30);
        
        botonValidarLetra.setBounds(10,320,150,30);

        botonReIniciar.addActionListener(this);
        botonIniciar.addActionListener(this);
        botonValidarLetra.addActionListener(this);
        botonSalir.addActionListener(this);
        
        panelPrincipal.add(botonReIniciar);
        panelPrincipal.add(botonIniciar);
        panelPrincipal.add(botonValidarLetra);
        panelPrincipal.add(botonSalir);
        panelPrincipal.add(letra);
        panelPrincipal.add(etiqueta);
        panelPrincipal.add(etiqueta2);
        panelPrincipal.add(etiqueta3);
        panelPrincipal.add(palabra);
        
        add(panelPrincipal,BorderLayout.CENTER);        
        
    }
	
    public void actionPerformed(ActionEvent evento){
        if(evento.getSource() == botonReIniciar){
            panelGrafico.error(0);
            palabra.setText("");
            letra.setText("");
            vidas = 0;
        }else if(evento.getSource() == botonIniciar){
            panelGrafico.error(0);
            p = new Palabras();
            String aux="";
            int contador =0;
            while(contador < p.getElegida().length()){
                aux+="*";
                contador++;
            }
            palabra.setText(aux);
        }else if(evento.getSource() == botonValidarLetra){
            String l="";
            l = letra.getText().toLowerCase();
            char c = l.charAt(0);
            if(p.comparar(c).equals(p.getElegida())){
                palabra.setText(p.comparar(c));
                JOptionPane.showMessageDialog(null,"Ganaste.");
            }else if(vidas == 6){
                JOptionPane.showMessageDialog(null,"Has perdido. 6 Intentos.");
            }else if(p.getBandera() == 1){
                    palabra.setText(p.comparar(c));
            }else if(p.getBandera() == 0){
                    vidas = vidas + 1;
                    panelGrafico.error(vidas);
            }
        }else if(evento.getSource() == botonSalir){
            System.exit(0);
        }
    }
    
    public class Pintar extends JPanel{
        
        int bandera = 0;
    
    public Pintar(){
        setSize(400,300);
    }
    
    public void paintComponent(Graphics g){
        super.paintComponent(g);
        g.setColor(Color.darkGray);
        g.fillRect(0, 10, 10, 350);
        g.fillRect(10, 10, 150, 10);
        g.drawLine(150, 10, 150, 50);
        
        if(bandera == 0){
            
        }
        
        if(bandera == 1){
            //cabeza
            g.setColor(Color.PINK);
            g.fillOval(125, 50, 50, 50);
			 //Ojo izquierdo
            g.setColor(Color.BLACK);
            g.fillOval(135, 63, 10, 10);
			 //Ojo derecho
            g.setColor(Color.BLACK);
            g.fillOval(155, 63, 10, 10);
			//Nariz
            g.setColor (Color.BLACK);
            g.fillRect (148, 75, 5, 5);
			//Boca
			g.setColor (Color.RED);
            g.fillRect(143, 85, 15, 5);
        }else if(bandera == 2){
            //cabeza
            g.setColor(Color.PINK);
            g.fillOval(125, 50, 50, 50);
			//Ojo izquierdo
            g.setColor(Color.BLACK);
            g.fillOval(135, 63, 10, 10);
			 //Ojo derecho
            g.setColor(Color.BLACK);
            g.fillOval(155, 63, 10, 10);
			//Nariz
            g.setColor (Color.BLACK);
            g.fillRect (148, 75, 5, 5);
			//Boca
			g.setColor (Color.RED);
            g.fillRect(143, 85, 15, 5);
            //tronco
            g.setColor (Color.WHITE);
            g.fillRect(148, 100, 5, 63);
        }else if(bandera == 3){
            //cabeza
            g.setColor(Color.PINK);
            g.fillOval(125, 50, 50, 50);
			//Ojo izquierdo
            g.setColor(Color.BLACK);
            g.fillOval(135, 63, 10, 10);
			 //Ojo derecho
            g.setColor(Color.BLACK);
            g.fillOval(155, 63, 10, 10);
			//Nariz
            g.setColor (Color.BLACK);
            g.fillRect (148, 75, 5, 5);
			//Boca
			g.setColor (Color.RED);
            g.fillRect(143, 85, 15, 5);
            //Columna
            g.setColor (Color.WHITE);
            g.fillRect(148, 100, 5, 63);
            //brazo derecho
            g.setColor (Color.PINK);
            g.drawLine(150, 100, 100, 130);
        }else if(bandera == 4){
            //cabeza
            g.setColor(Color.PINK);
            g.fillOval(125, 50, 50, 50);
			//Ojo izquierdo
            g.setColor(Color.BLACK);
            g.fillOval(135, 63, 10, 10);
			 //Ojo derecho
            g.setColor(Color.BLACK);
            g.fillOval(155, 63, 10, 10);
			//Nariz
            g.setColor (Color.BLACK);
            g.fillRect (148, 75, 5, 5);
			//Boca
			g.setColor (Color.RED);
            g.fillRect(143, 85, 15, 5);
            //tronco
            g.setColor (Color.WHITE);
            g.fillRect(148, 100, 5, 63);
            //brazo derecho
            g.setColor (Color.PINK);
            g.drawLine(150, 100, 100, 130);
            //brazo izq
            g.drawLine(150, 100, 200, 130);
        }else if(bandera == 5){
            //cabeza
            g.setColor(Color.PINK);
            g.fillOval(125, 50, 50, 50);
			//Ojo izquierdo
            g.setColor(Color.BLACK);
            g.fillOval(135, 63, 10, 10);
			 //Ojo derecho
            g.setColor(Color.BLACK);
            g.fillOval(155, 63, 10, 10);
			//Nariz
            g.setColor (Color.BLACK);
            g.fillRect (148, 75, 5, 5);
			//Boca
			g.setColor (Color.RED);
            g.fillRect(143, 85, 15, 5);
            //tronco
            g.setColor (Color.WHITE);
            g.fillRect(148, 100, 5, 63);
            //brazo derecho
            g.setColor (Color.PINK);
            g.drawLine(150, 100, 100, 130);
            //brazo izq
            g.drawLine(150, 100, 200, 130);
            //pierna derecha
            g.setColor(Color.BLUE);
            g.drawLine(150, 160, 100, 200);
        }else if(bandera == 6){
            //cabeza
            g.setColor(Color.PINK);
            g.fillOval(125, 50, 50, 50);
			//Ojo izquierdo
            g.setColor(Color.BLACK);
            g.fillOval(135, 63, 10, 10);
			 //Ojo derecho
            g.setColor(Color.BLACK);
            g.fillOval(155, 63, 10, 10);
			//Nariz
            g.setColor (Color.BLACK);
            g.fillRect (148, 75, 5, 5);
			//Boca
			g.setColor (Color.RED);
            g.fillRect(143, 85, 15, 5);
            //tronco
            g.setColor (Color.WHITE);
            g.fillRect(148, 100, 5, 63);
            //brazo derecho
            g.setColor (Color.PINK);
            g.drawLine(150, 100, 100, 130);
			//linea horizontal_CORTE
			g.setColor (Color.BLACK);
            g.fillRect(135, 100, 30, 5);
            //brazo izq
            g.drawLine(150, 100, 200, 130);
            //pierna derecha
            g.setColor(Color.BLUE);
            g.drawLine(150, 160, 100, 200);
            //pierna izq
            g.setColor(Color.BLUE);
            g.drawLine(150, 160, 200, 200);
        }
    }
    
        public void error(int error){
            bandera= error;
            this.repaint();
        }
    }
    
    public class Palabras{
        String[] arreglo;
        String elegida;
        String[] palabraFormada;
        int bandera;
    
    
        public Palabras(){
            arreglo = new String[16];
            arreglo[0]  = "pc";
            arreglo[1]  = "codigo";
            arreglo[2]  = "netbeans";
            arreglo[3]  = "java";
            arreglo[4]  = "room";
            arreglo[5]  = "glaciar";
            arreglo[6]  = "sistemas";
            arreglo[7]  = "programacion";
            arreglo[8]  = "cesmag";
            arreglo[9]  = "palabra";
			arreglo[10] = "fisica";
			arreglo[11] = "mouse";
			arreglo[12] = "android";
			arreglo[13] = "hardware";
			arreglo[14] = "software";
			arreglo[15] = "internet";
            elegida = escogerPalabra();
            palabraFormada = new String[elegida.length()];
            llenarPalabraFormada();
            bandera = 0;
        }
    
            public String escogerPalabra(){
                int aleatorio=(int)((Math.random()*16));
                return arreglo[aleatorio];

            }

            public void llenarPalabraFormada(){
                for(int i = 0; i < palabraFormada.length; i++)
                {
                    palabraFormada[i] = "*";
                }
            }

            public String comparar(char letra){
                System.out.println(elegida);
                String aux="";
                String nuevaPalabra ="";
                int contador = 0;
                bandera =0;

                while(contador < elegida.length()){
                    if((letra == elegida.charAt(contador)) && (palabraFormada[contador].equals("*"))){
                        aux += letra;
                        palabraFormada[contador] = aux;
                        aux="";
                        contador++;
                        bandera=1;
                    }else{
                        contador++;
                    }            
                }

                for(int i = 0; i < palabraFormada.length;i++){
                    nuevaPalabra += palabraFormada[i];            
                }
                return nuevaPalabra;
            }

            public String getElegida(){
                return elegida;
            }

            public int getBandera(){
                return bandera;
            }

        }
 	
	
	public static void main(String[] args){
		Ahorcado miAhorcado;
		miAhorcado = new Ahorcado("JUEGO AHORCADO");

	}//Cierra el metodo de void main
	
} //llave de la clase
