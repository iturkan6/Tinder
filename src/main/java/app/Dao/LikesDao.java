package app.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LikesDao {

    private final Connection con;
    private final static String SQL_add = "insert into liked_user (who, whom, action) values (?, ?, ?)";
    private final static String SQL_getLikedByUser = "select whom from liked_user where who = ? and action = 2";

    public LikesDao(Connection con) {
        this.con = con;
    }

    public void add(int who, int whom, int action) throws SQLException {
        PreparedStatement st = con.prepareStatement(SQL_add);
        st.setInt(1, who);
        st.setInt(2, whom);
        st.setInt(3, action);
        st.execute();
    }

    public List<Integer> getLikedIdsByUser(int id) throws SQLException {
        PreparedStatement st = con.prepareStatement(SQL_getLikedByUser);
        st.setInt(1, id);
        ResultSet rs = st.executeQuery();
        ArrayList<Integer> userIds = new ArrayList<>();
        while (rs.next()){
            userIds.add(rs.getInt("whom"));
        }
        return userIds;
    }
}
