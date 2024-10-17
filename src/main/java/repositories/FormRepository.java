package repositories;

import entities.User;
import untils.SQLServerConnection;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.*;

public class FormRepository {
    Connection connection = SQLServerConnection.getConnection();
    public boolean register(User user) {
        String sql = "{CALL dbo.registerUser(?, ?, ?, ?)}";
        try {
            CallableStatement callableStatement = connection.prepareCall(sql);
            callableStatement.setString(1, user.getFullname());
            callableStatement.setString(2, user.getEmail());
            callableStatement.setString(3, user.getPassword());
            callableStatement.registerOutParameter(4, Types.BIT);
            callableStatement.execute();

            return callableStatement.getBoolean(4);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
