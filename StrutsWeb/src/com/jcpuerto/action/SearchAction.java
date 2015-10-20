package com.jcpuerto.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.jcpuerto.form.SearchForm;
import com.jcpuerto.model.Employee;
import com.jcpuerto.service.EmployeeSearchService;

public final class SearchAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		EmployeeSearchService service = new EmployeeSearchService();
		ArrayList<Employee> results;

		SearchForm searchForm = (SearchForm) form;

		// Perform employee search based on what criteria was entered.
		String name = searchForm.getName();
		if (name != null && name.trim().length() > 0) {
			results = service.searchByName(name);
		} else {
			results = service.searchBySsNum(searchForm.getSsNum().trim());
		}

		// Place search results in SearchForm for access by JSP.
		searchForm.setResults(results);

		// Forward control to this Action's input page.
		return mapping.getInputForward();
	}
}