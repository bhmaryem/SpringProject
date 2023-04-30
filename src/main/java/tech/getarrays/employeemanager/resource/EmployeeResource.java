package tech.getarrays.employeemanager.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import tech.getarrays.employeemanager.model.Employee;
import tech.getarrays.employeemanager.service.EmployeeService;

import java.util.List;

@Controller
@RequestMapping("/employee")
public class EmployeeResource {
    @Autowired
    private  EmployeeService employeeService;

   
    @RequestMapping("/register")
	public String Welcome(ModelMap model)
	{
	   return "register"; 
	}

    @GetMapping("/all")
    public String getAllEmployees (ModelMap modelMap) {
        List<Employee> employees=employeeService.findAllEmployees();
        modelMap.addAttribute("employees", employees);
        return "listEmployees";
    }

   

    @PostMapping("/add")
    public String addEmployee(@ModelAttribute("employee") Employee employee , ModelMap modelMap) {
        Employee newEmployee = employeeService.addEmployee(employee);
        String msg="Employee added";
        modelMap.addAttribute("msg", msg);
        return "register";
    }

    @GetMapping("/edit/{id}")
    public String editEmployeeForm(@PathVariable("id") Long id, Model model) {
        Employee employee = employeeService.findEmployeeById(id);
        model.addAttribute("employee", employee);
        return "editEmployee";
    }
    @PostMapping("/update")
    public String updateEmployee(@ModelAttribute("employee") Employee employee) {
        employeeService.updateEmployee(employee);
        return "redirect:/employee/all";
    }


    @GetMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable("id") Long id) {
        employeeService.deleteEmployee(id);
        return "redirect:/employee/all";
    }

    
    @GetMapping("/find")
    public String getEmployeeById(@RequestParam Long id, ModelMap modelMap) {
      Employee employee = employeeService.findEmployeeById(id);
      modelMap.addAttribute("employee", employee);
      return "showEmployee";
    }




}
