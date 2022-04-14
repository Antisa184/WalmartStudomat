require "application_system_test_case"

class TriProfessorCourseStudentsTest < ApplicationSystemTestCase
  setup do
    @tri_professor_course_student = tri_professor_course_students(:one)
  end

  test "visiting the index" do
    visit tri_professor_course_students_url
    assert_selector "h1", text: "Tri professor course students"
  end

  test "should create tri professor course student" do
    visit tri_professor_course_students_url
    click_on "New tri professor course student"

    fill_in "Course name", with: @tri_professor_course_student.course_name
    fill_in "Professor", with: @tri_professor_course_student.professor_id
    fill_in "Student", with: @tri_professor_course_student.student_id
    click_on "Create Tri professor course student"

    assert_text "Tri professor course student was successfully created"
    click_on "Back"
  end

  test "should update Tri professor course student" do
    visit tri_professor_course_student_url(@tri_professor_course_student)
    click_on "Edit this tri professor course student", match: :first

    fill_in "Course name", with: @tri_professor_course_student.course_name
    fill_in "Professor", with: @tri_professor_course_student.professor_id
    fill_in "Student", with: @tri_professor_course_student.student_id
    click_on "Update Tri professor course student"

    assert_text "Tri professor course student was successfully updated"
    click_on "Back"
  end

  test "should destroy Tri professor course student" do
    visit tri_professor_course_student_url(@tri_professor_course_student)
    click_on "Destroy this tri professor course student", match: :first

    assert_text "Tri professor course student was successfully destroyed"
  end
end
