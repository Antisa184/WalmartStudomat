require "test_helper"

class TriProfessorCourseStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tri_professor_course_student = tri_professor_course_students(:one)
  end

  test "should get index" do
    get tri_professor_course_students_url
    assert_response :success
  end

  test "should get new" do
    get new_tri_professor_course_student_url
    assert_response :success
  end

  test "should create tri_professor_course_student" do
    assert_difference("TriProfessorCourseStudent.count") do
      post tri_professor_course_students_url, params: { tri_professor_course_student: { course_name: @tri_professor_course_student.course_name, professor_id: @tri_professor_course_student.professor_id, student_id: @tri_professor_course_student.student_id } }
    end

    assert_redirected_to tri_professor_course_student_url(TriProfessorCourseStudent.last)
  end

  test "should show tri_professor_course_student" do
    get tri_professor_course_student_url(@tri_professor_course_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_tri_professor_course_student_url(@tri_professor_course_student)
    assert_response :success
  end

  test "should update tri_professor_course_student" do
    patch tri_professor_course_student_url(@tri_professor_course_student), params: { tri_professor_course_student: { course_name: @tri_professor_course_student.course_name, professor_id: @tri_professor_course_student.professor_id, student_id: @tri_professor_course_student.student_id } }
    assert_redirected_to tri_professor_course_student_url(@tri_professor_course_student)
  end

  test "should destroy tri_professor_course_student" do
    assert_difference("TriProfessorCourseStudent.count", -1) do
      delete tri_professor_course_student_url(@tri_professor_course_student)
    end

    assert_redirected_to tri_professor_course_students_url
  end
end
