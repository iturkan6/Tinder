package app;

import java.util.Objects;

public class User {
    int id;
    public String name;
    public String photo;

    public User(String name, String photo) {
        this.name = name;
        this.photo = photo;
    }

    public User(int id, String name, String photo) {
        this.id = id;
        this.name = name;
        this.photo = photo;
    }

    public String getName() {
        return name;
    }

    public String getPhoto() {
        return photo;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return id == user.id &&
                name.equals(user.name) &&
                photo.equals(user.photo);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, photo);
    }
}