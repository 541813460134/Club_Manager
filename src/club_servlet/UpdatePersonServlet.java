package club_servlet;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import club_dao.Message_Dao;
import club_stu_meaasge.AllMessage;

public class UpdatePersonServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 创建一个DiskFileItemFactory工厂
				DiskFileItemFactory factory = new DiskFileItemFactory();
				// 创建一个ServletFileUpload对象
				ServletFileUpload sfu = new ServletFileUpload(factory);
				sfu.setHeaderEncoding("UTF-8");// 解决上传文件的乱码
				// 解析request对象，返回所有表单项
				List<FileItem> fileItems = new ArrayList<FileItem>(0);
				// 用于封装普通表单项的数据
				Map<String, String[]> map = new HashMap<String, String[]>();
				String s_number = null;
				List<String> allphoto = new ArrayList<String>();
				
					try {
						fileItems = sfu.parseRequest(request);
					} catch (FileUploadException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}

					// 迭代fileItems表单项
					for (FileItem fileItem : fileItems) {
						if (fileItem.isFormField()) {
							// 普通表单项
							String name = fileItem.getFieldName();// 得到字段的名
							String value = fileItem.getString("UTF-8");// 得到字段值
							if (name.equals("s_number"))
								s_number = value;
							map.put(name, new String[] { value });// 向map中赋值

						} else {
							// 文件表单项
							InputStream inputStream = fileItem.getInputStream();
							String filename = fileItem.getName();// 得到上传的文件名
							String extension = FilenameUtils.getExtension(filename);
							if (!("jsp".equals(extension) || "exe".equals(extension))) {// 上传的文件不能是jsp、exe
								// 创建目录
								File storeDirectory = new File(this.getServletContext().getRealPath("/upload"));
								if (!storeDirectory.exists()) {
									storeDirectory.mkdirs();// 如何目录不存在，就创建
								}
								// 处理文件名
								if (filename != null) {
									filename = FilenameUtils.getName(filename);
								}
								// 目录打散
								String childDirectory = makeChildDirectory(storeDirectory, filename); // a/b

								filename = childDirectory + File.separator + filename;
								// 文件上传
								try {
									fileItem.write(new File(storeDirectory, filename));
								} catch (Exception e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
								fileItem.delete(); // 删除临时文件
								allphoto.add(filename);

							}
							map.put(fileItem.getFieldName(), new String[] { filename });// 将图片表单项的name和value保存到map中
						}
					}
					AllMessage am = new AllMessage();

					try {
						BeanUtils.populate(am, map);
					} catch (Exception e) {
						e.printStackTrace();
					}
					
					if(am.getS_sex().equals("0"))
						am.setS_sex("男");
					else
						am.setS_sex("女");
					
					if(am.getO_isg().equals("0"))
						am.setO_isg("是");
					else
						am.setO_isg("否");
		
		    Message_Dao md = new Message_Dao();
		    md.updateMessage(am);
		    md.addphoto(s_number, allphoto);
		
	
				
		//跳转
		request.getRequestDispatcher("FindBaseServlet").forward(request, response);
				
	}
				// 目录打散
				private String makeChildDirectory(File storeDirectory, String filename) {
					int hashcode = filename.hashCode();// 返回字符转换的32位hashcode码
					// System.out.println(hashcode);
					String code = Integer.toHexString(hashcode); // 把hashcode转换为16进制的字符
																	// abdsaf2131safsd
					// System.out.println(code);
					String childDirectory = code.charAt(0) + File.separator + code.charAt(1); // a/b
					// 创建指定目录
					File file = new File(storeDirectory, childDirectory);
					if (!file.exists()) {
						file.mkdirs();
					}
					return childDirectory;
				}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
