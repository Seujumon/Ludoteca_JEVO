package logica.Entidades;

public class Juego {
    private int id;
    private String nombre;
    private String autor;
    private String cat1;
    private String cat2;
    private String cat3;
    private String tipo;
    private int jugMin;
    private int jugMax;
    private boolean disponible;

    public Juego() {
    }

    public Juego(int id, String nombre, String autor, String cat1, String cat2, String cat3, String tipo, int jugMin, int jugMax, boolean disponible) {
        this.id = id;
        this.nombre = nombre;
        this.autor = autor;
        this.cat1 = cat1;
        this.cat2 = cat2;
        this.cat3 = cat3;
        this.tipo = tipo;
        this.jugMin = jugMin;
        this.jugMax = jugMax;
        this.disponible = disponible;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getCat1() {
        return cat1;
    }

    public void setCat1(String cat1) {
        this.cat1 = cat1;
    }

    public String getCat2() {
        return cat2;
    }

    public void setCat2(String cat2) {
        this.cat2 = cat2;
    }

    public String getCat3() {
        return cat3;
    }

    public void setCat3(String cat3) {
        this.cat3 = cat3;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getJugMin() {
        return jugMin;
    }

    public void setJugMin(int jugMin) {
        this.jugMin = jugMin;
    }

    public int getJugMax() {
        return jugMax;
    }

    public void setJugMax(int jugMax) {
        this.jugMax = jugMax;
    }

    public boolean isDisponible() {
        return disponible;
    }

    public void setDisponible(boolean disponible) {
        this.disponible = disponible;
    }

    @Override
    public String toString() {
        return "Juego " + "id=" + id + ", nombre=" + nombre + ", autor=" + autor + ", cat1=" + cat1 + ", cat2=" + cat2 + ", cat3=" + cat3 + ", tipo=" + tipo + ", jugMin=" + jugMin + ", jugMax=" + jugMax + ", disponible=" + disponible;
    }
    

}
