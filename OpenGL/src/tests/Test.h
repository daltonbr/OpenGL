#pragma once

#include <vector>
#include <functional>

namespace test
{
	class Test
	{
	public:
		Test() {}
		virtual ~Test() {}

		virtual void OnUpdate(float deltaTime) {}
		virtual void OnRender() {}
		virtual void OnImGuiRender() {} 

	};

	class TestMenu : public Test	
	{
	public:
		TestMenu(Test*& currentTestPointer);
	
		void OnImGuiRender() override;

		template<typename T>
		void RegisterTest(const std::string& name)
		{
			std::cout << "Registering test " << name << std::endl;
			
			m_Tests.push_back(std::make_pair(name, []() { return new T(); }));
		}

	private:
		Test*& m_CurrentTest;
		// we have a vector, of pairs, that contains a string and a lambda function
		// this lambda returns a Test* and take no parameters
		std::vector <std::pair<std::string, std::function<Test*()>>> m_Tests;
	};

}
