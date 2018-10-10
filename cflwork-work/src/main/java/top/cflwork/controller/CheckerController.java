package top.cflwork.controller;

import org.apache.ibatis.annotations.Param;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import top.cflwork.common.Message;
import top.cflwork.common.PagingBean;
import top.cflwork.query.PageQuery;
import top.cflwork.query.StatusQuery;
import top.cflwork.service.*;
import top.cflwork.vo.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by chenfeilong on 2017/11/12.
 */
@RequestMapping("checker")
@Controller
public class CheckerController {
    @Resource
    private UserService userService;
    @Resource
    private CheckerService checkerService;
    @Resource
    private RoleService roleService;
    @Resource
    private UserRoleService userRoleService;
    @Resource
    private EmployeeService employeeService;
    @RequestMapping("checkerList")
    @ResponseBody
    public PagingBean checkerList(int pageSize, int pageIndex,HttpSession session,String searchVal) throws Exception {
        UserVo userVo = (UserVo)session.getAttribute("userVo");
        PagingBean pagingBean = new PagingBean();
        pagingBean.setPageSize(pageSize);
        pagingBean.setCurrentPage(pageIndex);
        PageQuery pageQuery = new PageQuery();
        pageQuery.setPageNo(pagingBean.getStartIndex());
        pageQuery.setPageSize(pagingBean.getPageSize());
        pageQuery.setSearchVal(searchVal);
        pageQuery.setUserId(userVo.getId());
        pageQuery.setCompanyId(userVo.getCompanyId());
        pagingBean.setTotal(checkerService.counts(pageQuery));
        pagingBean.setrows(checkerService.listPages(pageQuery));
        return pagingBean;
    }
    @RequestMapping("hotelCheckerList")
    @ResponseBody
    public PagingBean hotelCheckerList(int pageSize, int pageIndex,HttpSession session,String searchVal,Long hotelId) throws Exception {
        UserVo userVo = (UserVo)session.getAttribute("userVo");
        PagingBean pagingBean = new PagingBean();
        pagingBean.setPageSize(pageSize);
        pagingBean.setCurrentPage(pageIndex);
        PageQuery pageQuery = new PageQuery();
        pageQuery.setPageNo(pagingBean.getStartIndex());
        pageQuery.setPageSize(pagingBean.getPageSize());
        pageQuery.setSearchVal(searchVal);
        pageQuery.setUserId(userVo.getId());
        pageQuery.setCompanyId(userVo.getCompanyId());
        pageQuery.setHotelId(hotelId);
        pagingBean.setTotal(checkerService.count(pageQuery));
        pagingBean.setrows(checkerService.listPage(pageQuery));
        return pagingBean;
    }
    @RequestMapping("addChecker")
    @ResponseBody
    public Message addChecker(UserVo userVo, HttpSession session) {
        UserVo user = (UserVo) session.getAttribute("userVo");
        UserRoleVo userRole = (UserRoleVo) session.getAttribute("userRole");
        userVo.setHeadicon("static/img/face.gif");
        userVo.setIsActive((byte) 0);
        userVo.setPassword(new Md5Hash(userVo.getPassword()).toString());
        userVo.setNickname(userVo.getPhone());
        userVo.setCompanyId(user.getCompanyId());
        userService.save(userVo);
        EmployeeVo employeeVo = new EmployeeVo();
        employeeVo.setCompanyId(userVo.getCompanyId());
        if(userRole.getRoleVo().getTitle().equals("总管理员")){
            employeeVo.setHotelId(-1);
        }else if(userRole.getRoleVo().getTitle().equals("店长")){
            HotelVo hotelVo = (HotelVo) session.getAttribute("hotelVo");
            employeeVo.setHotelId(hotelVo.getId());
        }
        employeeVo.setUserId(user.getId());
        employeeVo.setEmployeeId(userVo.getId());
        employeeService.save(employeeVo);
        UserVo userVo1 = userService.findByPhone(userVo.getPhone());
        RoleVo roleVo = roleService.findByName("审核员");
        UserRoleVo userRoleVo = new UserRoleVo();
        if (roleVo==null) {
            RoleVo roleVo1 = new RoleVo();
            roleVo1.setIsActive((byte)0);
            roleVo1.setDescription("审核员");
            roleVo1.setTitle("审核员");
            roleService.save(roleVo1);
            roleVo = roleService.findByName("审核员");
        }
        //同时把信息保存到用户权限表中
        userRoleVo.setIsActive((byte) 0);
        userRoleVo.setUserId(userVo1.getId());
        userRoleVo.setRoleId(roleVo.getId());
        userRoleService.save(userRoleVo);
        return Message.success("审核员账号新增成功!");
    }
    @RequestMapping("addHotelChecker")
    @ResponseBody
    public Message addHotelChecker(UserVo userVo, HttpSession session) {
        UserVo user = (UserVo) session.getAttribute("userVo");
        UserRoleVo userRole = (UserRoleVo) session.getAttribute("userRole");
        userVo.setHeadicon("static/img/face.gif");
        userVo.setIsActive((byte) 0);
        userVo.setPassword(new Md5Hash(userVo.getPassword()).toString());
        userVo.setNickname(userVo.getPhone());
        userVo.setCompanyId(user.getCompanyId());
        userService.save(userVo);
        EmployeeVo employeeVo = new EmployeeVo();
        employeeVo.setCompanyId(userVo.getCompanyId());
        if(userRole.getRoleVo().getTitle().equals("总管理员")){
            employeeVo.setHotelId(-1);
        }else if(userRole.getRoleVo().getTitle().equals("店长")){
            HotelVo hotelVo = (HotelVo) session.getAttribute("hotelVo");
            employeeVo.setHotelId(hotelVo.getId());
        }
        employeeVo.setUserId(user.getId());
        employeeVo.setEmployeeId(userVo.getId());
        employeeService.save(employeeVo);
        UserVo userVo1 = userService.findByPhone(userVo.getPhone());
        RoleVo roleVo = roleService.findByName("酒店审核员");
        UserRoleVo userRoleVo = new UserRoleVo();
        if (roleVo==null) {
            RoleVo roleVo1 = new RoleVo();
            roleVo1.setIsActive((byte)0);
            roleVo1.setDescription("酒店审核员");
            roleVo1.setTitle("酒店审核员");
            roleService.save(roleVo1);
            roleVo = roleService.findByName("酒店审核员");
        }
        //同时把信息保存到用户权限表中
        userRoleVo.setIsActive((byte) 0);
        userRoleVo.setUserId(userVo1.getId());
        userRoleVo.setRoleId(roleVo.getId());
        userRoleService.save(userRoleVo);
        return Message.success("酒店审核员账号新增成功!");
    }
    @RequestMapping("/findChecker/{id}")
    @ResponseBody
    public UserVo findChecker(@PathVariable("id") long id) {
        UserVo checker = checkerService.getById(id);
        return checker;
    }
    @RequestMapping("/initPwd/{id}")
    @ResponseBody
    public Message initPwd(@PathVariable("id") long id) {
        try{
            checkerService.initPwd(new Md5Hash("888888").toString(),id);
            return Message.success("初始化成功，密码为888888请妥善保管");
        }catch (Exception e){
            e.printStackTrace();
            return Message.fail("初始化失败");
        }

    }
    @RequestMapping("/checkerUpdateSave")
    @ResponseBody
    public Message updateChecker(UserVo checker) throws Exception {
        try {
            checkerService.update(checker);
            return Message.success("修改成功!");
        } catch (Exception e) {
            return Message.fail("修改失败!");
        }
    }

    @RequestMapping("/deleteManyChecker")
    @ResponseBody
    public Message deleteManychecker(@Param("manyId") String manyId) throws Exception {
        try {
            String str[] = manyId.split(",");
            for (String s : str) {
                checkerService.removeById(Long.parseLong(s));
            }
            return Message.success("删除成功!");
        } catch (Exception e) {
            e.printStackTrace();
            return Message.fail("删除失败!");
        }
    }

    @RequestMapping("/deleteChecker/{id}")
    @ResponseBody
    public Message deletechecker(@PathVariable("id") long id) throws Exception {
        try {
            checkerService.removeById(id);
            return Message.success("删除成功!");
        } catch (Exception e) {
            e.printStackTrace();
            return Message.fail("删除失败!");
        }
    }

    @RequestMapping("/checkerListPage")
    public String table() throws Exception {
        return "employee/checkerList";
    }
    @RequestMapping("/hotelCheckerListPage")
    public String hotelCheckerListPage() throws Exception {
        return "employee/hotelCheckerList";
    }
    @RequestMapping("updateStatus/{id}/{status}")
    @ResponseBody
    public Message updateStatus(@PathVariable("id") long id, @PathVariable("status") int status) throws Exception {
        try {
            checkerService.updateStatus(new StatusQuery(id, status));
            return Message.success("ok");
        } catch (Exception e) {
            return Message.fail("fail");
        }
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }
}
