package com.antra.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.antra.entity.Department;
import com.antra.entity.Employee;
import com.antra.entity.Project;
import com.antra.service.DaoService;
import com.antra.service.ProjectManagementService;

/**
 * WebMvc front controller for administration.
 * @author Lester
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private DaoService ds;
	@Autowired
	private ProjectManagementService pms;

	/**
	 * Employees administration
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/employee", method = RequestMethod.GET)
	public String listEmployees(Model model) {
		model.addAttribute("employee", new Employee());
		model.addAttribute("listEmployees", ds.getEd().findAll());
		model.addAttribute("content", "employee");
		model.addAttribute("title", "Employee Management Page");
		model.addAttribute("navigate", true);
		return "common/page";
	}

	@RequestMapping(value = "/employee/add", method = RequestMethod.GET)
	public String saveEmployee(@ModelAttribute("employee") Employee e) {
		ds.getEd().save(e);
		return "redirect:/admin/employee";
	}

	@RequestMapping(value = "/employee/remove")
	public String deleteEmployee(@RequestParam Integer id) {
		ds.getEd().delete(id);
		return "redirect:/admin/employee";
	}

	@RequestMapping(value = "/employee/edit", method = RequestMethod.GET)
	public String editEmployee(@RequestParam Integer id, Model model) {
		model.addAttribute("employee", ds.getEd().findOne(id));
		model.addAttribute("listEmployees", ds.getEd().findAll());
		model.addAttribute("content", "employee");
		model.addAttribute("title", "Employee Management Page");
		model.addAttribute("navigate", true);
		return "common/page";
	}

	/**
	 * For employee to manage projects on it
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/employee/projects", method = RequestMethod.GET)
	public String empGetProjects(@RequestParam Integer id, Model model) {
		// warning: cache collision, Set<Employee> in the department obj will
		// not be updated even if employee in set is updated
		model.addAttribute("listProjects", ds.getEd().findOne(id).getProjects());
		model.addAttribute("projects", pms.getExclusionProjects(id));
		model.addAttribute("content", "emp_projects");
		model.addAttribute("title", "Projects View On Employee");
		model.addAttribute("navigate", true);
		model.addAttribute("EmpId", id);
		return "common/page";
	}

	@RequestMapping(value = "/employee/addProject", method = RequestMethod.GET)
	public String empSaveProject(@RequestParam Integer id,
			@RequestParam Integer EmpId) {
		pms.addProjectOnEmployee(id, EmpId);
		return "redirect:/admin/employee/projects?id=" + EmpId;
	}

	@RequestMapping(value = "/employee/removeProject")
	public String empDeleteProject(@RequestParam Integer id,
			@RequestParam Integer EmpId) {
		pms.deleteProjectOnEmployee(id, EmpId);
		return "redirect:/admin/employee/projects?id=" + EmpId;
	}

	/**
	 * For department administration
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/department", method = RequestMethod.GET)
	public String listDepartments(Model model) {
		model.addAttribute("department", new Department());
		model.addAttribute("listDepartments", ds.getDd().findAll());
		model.addAttribute("content", "department");
		model.addAttribute("title", "Department Management Page");
		model.addAttribute("navigate", true);
		return "common/page";
	}

	@RequestMapping(value = "/department/add", method = RequestMethod.GET)
	public String saveDepartment(@ModelAttribute("department") Department d) {
		ds.getDd().save(d);
		return "redirect:/admin/department";
	}

	@RequestMapping(value = "/department/remove")
	public String deleteDepartment(@RequestParam Integer id) {
		ds.getDd().delete(id);
		return "redirect:/admin/department";
	}

	@RequestMapping(value = "/department/edit", method = RequestMethod.GET)
	public String editDepartment(@RequestParam Integer id, Model model) {
		model.addAttribute("department", ds.getDd().findOne(id));
		model.addAttribute("listDepartments", ds.getDd().findAll());
		model.addAttribute("content", "department");
		model.addAttribute("title", "Department Management Page");
		model.addAttribute("navigate", true);
		return "common/page";
	}

	/**
	 * For department to manage employees on it
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/department/employees", method = RequestMethod.GET)
	public String deptGetEmployees(@RequestParam Integer id, Model model) {
		model.addAttribute("employee", new Employee());
		// warning: cache collision, Set<Employee> in the department obj will
		// not be updated even if employee in set is updated
		model.addAttribute("listEmployees", ds.getDd().findOne(id)
				.getEmployees());
		model.addAttribute("content", "employee");
		model.addAttribute("title", "Employee View By Department");
		model.addAttribute("navigate", true);
		model.addAttribute("DeptId", id);
		return "common/page";
	}

	@RequestMapping(value = "/department/addEmployee", method = RequestMethod.GET)
	public String deptSaveEmployee(@ModelAttribute("employee") Employee e) {
		ds.getEd().save(e);
		return "redirect:/admin/department/employees?id=" + e.getDeptid();
	}

	@RequestMapping(value = "/department/editEmployee", method = RequestMethod.GET)
	public String deptEditEmployee(@RequestParam Integer id, Model model) {
		Employee e = ds.getEd().findOne(id);
		Integer DeptId = e.getDeptid();
		model.addAttribute("employee", e);
		model.addAttribute("listEmployees", ds.getDd().findOne(DeptId)
				.getEmployees());
		model.addAttribute("content", "employee");
		model.addAttribute("title", "Employee View By Department");
		model.addAttribute("navigate", true);
		model.addAttribute("DeptId", DeptId);
		return "common/page";
	}

	@RequestMapping(value = "/department/removeEmployee")
	public String deptDeleteEmployee(@RequestParam Integer id) {
		Integer deptid = ds.getEd().findOne(id).getDeptid();
		ds.getEd().delete(id);
		return "redirect:/admin/department/employees?id=" + deptid;
	}

	/**
	 * For project administration
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/project", method = RequestMethod.GET)
	public String listProjects(Model model) {
		model.addAttribute("project", new Project());
		model.addAttribute("listProjects", ds.getPd().findAll());
		model.addAttribute("content", "project");
		model.addAttribute("title", "Project Management Page");
		model.addAttribute("navigate", true);
		return "common/page";
	}

	@RequestMapping(value = "/project/add", method = RequestMethod.GET)
	public String saveProject(Project p) {
		ds.getPd().save(p);
		return "redirect:/admin/project";
	}

	@RequestMapping(value = "/project/remove")
	public String deleteProject(@RequestParam Integer id) {
		ds.getPd().delete(id);
		return "redirect:/admin/project";
	}

	@RequestMapping(value = "/project/edit", method = RequestMethod.GET)
	public String editProject(@RequestParam Integer id, Model model) {
		model.addAttribute("project", ds.getPd().findOne(id));
		model.addAttribute("listProjects", ds.getPd().findAll());
		model.addAttribute("content", "project");
		model.addAttribute("title", "Project Management Page");
		model.addAttribute("navigate", true);
		return "common/page";
	}

	/**
	 * For project to manage employees on it.
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/project/employees", method = RequestMethod.GET)
	public String projGetEmployees(@RequestParam Integer id, Model model) {
		// warning: cache collision, Set<Employee> in the department obj will
		// not be updated even if employee in set is updated
		model.addAttribute("listEmployees", ds.getPd().findOne(id)
				.getEmployees());
		model.addAttribute("employees", pms.getExclusionEmployees(id));
		model.addAttribute("content", "proj_employees");
		model.addAttribute("title", "Employees View On Project");
		model.addAttribute("navigate", true);
		model.addAttribute("ProjId", id);
		return "common/page";
	}

	@RequestMapping(value = "/project/addEmployee", method = RequestMethod.GET)
	public String projSaveEmployee(@RequestParam Integer id,
			@RequestParam Integer ProjId) {
		pms.addEmployeeOnProject(id, ProjId);
		return "redirect:/admin/project/employees?id=" + ProjId;
	}

	@RequestMapping(value = "/project/removeEmployee")
	public String projDeleteEmployee(@RequestParam Integer id,
			@RequestParam Integer ProjId) {
		pms.deleteEmployeeOnProject(id, ProjId);
		return "redirect:/admin/project/employees?id=" + ProjId;
	}
}
