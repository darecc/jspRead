package dc;

public class Citizen {
    private String name;
    private String city;

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    private String country;
    public Citizen(String name, String city, String country) {
        this.city = city;
        this.country = country;
        this.name = name;
    }

    @Override
    public String toString() {
        return "name : " + name + ", miasto: " + city + ", country: " + country;
    }
}
