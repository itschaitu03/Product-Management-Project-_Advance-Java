package com.chaitu.main;

import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.chaitu.sbeans.ConstructorInjection;

public class DependancyInjection {

	public static void main(String[] args) {

		try (FileSystemXmlApplicationContext ctx = new FileSystemXmlApplicationContext(
				"src/com/chaitu/cfgs/applicationContext.xml")) {

			ConstructorInjection c = (ConstructorInjection) ctx.getBean("ci");
			System.out.println(c);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
