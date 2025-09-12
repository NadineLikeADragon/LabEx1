package data;

import reviewer.User;
import java.io.*;
public class UserIO {
    public static void add(User user, String filepath) throws IOException {
        File file = new File(filepath);
        PrintWriter out = new PrintWriter(new FileWriter(file, true));
        String[] Socials = user.getSocials();
        out.println(user.getName() + "|" + user.getAddress() + "|" + user.getCity() + "|" + user.getCountry() + "|" + user.getEmail() + "|" + user.getPhone() + "|"+ user.getEUOrNonEu() +"|" + Socials + "|" + user.getComment() + "\n");
        out.close();
    }
}
