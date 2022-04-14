class TriProfessorCourseStudentsController < ApplicationController
  before_action :set_tri_professor_course_student, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit, :update, :destroy]

  def correct_user
    if not current_user.user_type == 'professor' and not current_user.user_type == 'admin' then
      redirect_to tri_professor_course_student_path, notice: "Not authorized!"
    end
  end

  # GET /tri_professor_course_students or /tri_professor_course_students.json
  def index
    @tri_professor_course_students = TriProfessorCourseStudent.all
  end

  # GET /tri_professor_course_students/1 or /tri_professor_course_students/1.json
  def show
  end

  # GET /tri_professor_course_students/new
  def new
    @tri_professor_course_student = TriProfessorCourseStudent.new
  end

  # GET /tri_professor_course_students/1/edit
  def edit
  end

  # POST /tri_professor_course_students or /tri_professor_course_students.json
  def create
    @tri_professor_course_student = TriProfessorCourseStudent.new(tri_professor_course_student_params)

    respond_to do |format|
      if @tri_professor_course_student.save
        format.html { redirect_to tri_professor_course_student_url(@tri_professor_course_student), notice: "Tri professor course student was successfully created." }
        format.json { render :show, status: :created, location: @tri_professor_course_student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tri_professor_course_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tri_professor_course_students/1 or /tri_professor_course_students/1.json
  def update
    respond_to do |format|
      if @tri_professor_course_student.update(tri_professor_course_student_params)
        format.html { redirect_to tri_professor_course_student_url(@tri_professor_course_student), notice: "Tri professor course student was successfully updated." }
        format.json { render :show, status: :ok, location: @tri_professor_course_student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tri_professor_course_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tri_professor_course_students/1 or /tri_professor_course_students/1.json
  def destroy
    @tri_professor_course_student.destroy

    respond_to do |format|
      format.html { redirect_to tri_professor_course_students_url, notice: "Tri professor course student was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tri_professor_course_student
      @tri_professor_course_student = TriProfessorCourseStudent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tri_professor_course_student_params
      params.require(:tri_professor_course_student).permit(:professor_user_id, :course_name, :student_user_id, :grade)
    end
end
