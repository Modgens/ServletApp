package com.example.demo4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "fServlet", value = "/hello")
public class MainServlet extends HttpServlet {

    private Calculator calculator;

    @Override
    public void init() throws ServletException {
        calculator = new Calculator();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        double start = Double.parseDouble(request.getParameter("start"));
        double end = Double.parseDouble(request.getParameter("end"));
        double step = Double.parseDouble(request.getParameter("step"));

        calculator.setStart(start);
        calculator.setEnd(end);
        calculator.setStep(step);

        double[] result = calculator.fillY();

        request.setAttribute("calculator", calculator);
        request.setAttribute("result", result);

        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
