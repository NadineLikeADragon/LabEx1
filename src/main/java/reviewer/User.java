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
}
