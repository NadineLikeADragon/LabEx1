package reviewer;
import lombok.*;

@Getter
@Setter
public class User {
    public String Name;
    public String Address;
    public String City;
    public String Country;
    public String Phone;
    public String Email;
    public String EUOrNonEu;
    public String Comment;
    public String[] Socials;

    public User(String name, String address, String city, String country, String phone, String email, String eu, String[] socialList, String comment) {
        this.Name = name;
        this.Address = address;
        this.City = city;
        this.Country = country;
        this.Phone = phone;
        this.Email = email;
        this.EUOrNonEu = eu;
        this.Socials = socialList;
        this.Comment = comment;
    }
}
