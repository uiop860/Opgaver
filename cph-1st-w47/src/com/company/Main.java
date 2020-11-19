package com.company;

import java.sql.*;
import java.util.ArrayList;

public class Main {

    static Connection con;
    static PreparedStatement retrieveCountOfCitiesInCityTable;
    static PreparedStatement retrieveCitiesWithPopHigherThan5Mil;

    public static void main(String[] args) {



        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost/world", "root", "hitman123");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        statements();


        try {
            ResultSet rs = retrieveCountOfCitiesInCityTable.executeQuery();
            if(rs.next()){
                System.out.println(rs.getInt("count_city"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        City city;
        ArrayList<City> list = new ArrayList<>();

        try {
            ResultSet rs = retrieveCitiesWithPopHigherThan5Mil.executeQuery();

            while (rs.next()){
                String cityName = rs.getString(2);
                int cityPop = rs.getInt(5);

                list.add(city = new City(cityName,cityPop));

                //System.out.println("City name = " + cityName + "\t\t\tCity population = " + cityPop);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        System.out.println(list.toString());


        try {
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }


    static void statements() {
        try {
            retrieveCountOfCitiesInCityTable = con.prepareStatement("SELECT COUNT(*) AS count_city FROM city");
            retrieveCitiesWithPopHigherThan5Mil = con.prepareStatement("SELECT * FROM city where population > 5000000");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}

