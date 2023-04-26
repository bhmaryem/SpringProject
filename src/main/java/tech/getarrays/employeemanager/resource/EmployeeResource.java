package tech.getarrays.employeemanager.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
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

    @GetMapping("/find/{id}")
    public ResponseEntity<Employee> getEmployeeById (@PathVariable("id") Long id) {
        Employee employee = employeeService.findEmployeeById(id);
        return new ResponseEntity<>(employee, HttpStatus.OK);
    }

    @PostMapping("/add")
    public String addEmployee(@ModelAttribute("employee") Employee employee , ModelMap modelMap) {
        Employee newEmployee = employeeService.addEmployee(employee);
        String msg="Employee added";
        modelMap.addAttribute("msg", msg);
        return "register";
    }

    @PutMapping("/update")
    public ResponseEntity<Employee> updateEmployee(@RequestBody Employee employee) {
        Employee updateEmployee = employeeService.updateEmployee(employee);
        return new ResponseEntity<>(updateEmployee, HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> deleteEmployee(@PathVariable("id") Long id) {
        employeeService.deleteEmployee(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
