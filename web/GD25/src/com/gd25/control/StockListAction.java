package com.gd25.control;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gd25.dao.GDDao;
import com.gd25.dto.ProductsVO;
import com.google.gson.Gson;

public class StockListAction implements IAction {

	@Override
	public ForwardAction execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// dao 단과 연결
		String[] categories = request.getParameterValues("arr");
		
		GDDao dao = GDDao.getInstance();

		List<ProductsVO> lst = dao.getStockList(categories);

		Gson gson = new Gson();

		StringBuilder sb = new StringBuilder();

		sb.append("[");
		for (int i = 0; i < lst.size(); i++) {

			if (i == lst.size() - 1) {

				sb.append(gson.toJson(lst.get(i)));

			} else {

				sb.append(gson.toJson(lst.get(i)) + ",");
			}
		}
		sb.append("]");
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");

		System.out.println(sb);

		PrintWriter out = response.getWriter();
		out.print(sb);
		
		return null;
	}

}
