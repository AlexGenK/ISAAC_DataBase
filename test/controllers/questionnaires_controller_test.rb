require 'test_helper'

class QuestionnairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionnaire = questionnaires(:one)
  end

  test "should get index" do
    get questionnaires_url
    assert_response :success
  end

  test "should get new" do
    get new_questionnaire_url
    assert_response :success
  end

  test "should create questionnaire" do
    assert_difference('Questionnaire.count') do
      post questionnaires_url, params: { questionnaire: { a_1: @questionnaire.a_1, a_2: @questionnaire.a_2, a_3: @questionnaire.a_3, a_4: @questionnaire.a_4, a_5: @questionnaire.a_5, a_6: @questionnaire.a_6, a_7: @questionnaire.a_7, a_8: @questionnaire.a_8, age: @questionnaire.age, apartment: @questionnaire.apartment, b_1: @questionnaire.b_1, b_2: @questionnaire.b_2, b_3: @questionnaire.b_3, b_4_01: @questionnaire.b_4_01, b_4_02: @questionnaire.b_4_02, b_4_03: @questionnaire.b_4_03, b_4_04: @questionnaire.b_4_04, b_4_05: @questionnaire.b_4_05, b_4_06: @questionnaire.b_4_06, b_4_07: @questionnaire.b_4_07, b_4_08: @questionnaire.b_4_08, b_4_09: @questionnaire.b_4_09, b_4_10: @questionnaire.b_4_10, b_4_11: @questionnaire.b_4_11, b_4_12: @questionnaire.b_4_12, b_5: @questionnaire.b_5, b_6: @questionnaire.b_6, birth_date: @questionnaire.birth_date, building: @questionnaire.building, c_1: @questionnaire.c_1, c_2: @questionnaire.c_2, c_3: @questionnaire.c_3, c_4: @questionnaire.c_4, c_5: @questionnaire.c_5, c_6: @questionnaire.c_6, c_7: @questionnaire.c_7, city: @questionnaire.city, d_1_0: @questionnaire.d_1_0, d_1_10: @questionnaire.d_1_10, d_1_11: @questionnaire.d_1_11, d_1_12: @questionnaire.d_1_12, d_1_13: @questionnaire.d_1_13, d_1_14: @questionnaire.d_1_14, d_1_15: @questionnaire.d_1_15, d_1_16: @questionnaire.d_1_16, d_1_17: @questionnaire.d_1_17, d_1_18: @questionnaire.d_1_18, d_1_19: @questionnaire.d_1_19, d_1_1: @questionnaire.d_1_1, d_1_20: @questionnaire.d_1_20, d_1_20_description: @questionnaire.d_1_20_description, d_1_2: @questionnaire.d_1_2, d_1_3: @questionnaire.d_1_3, d_1_4: @questionnaire.d_1_4, d_1_5: @questionnaire.d_1_5, d_1_6: @questionnaire.d_1_6, d_1_7: @questionnaire.d_1_7, d_1_8: @questionnaire.d_1_8, d_1_9: @questionnaire.d_1_9, d_2_0: @questionnaire.d_2_0, d_2_10: @questionnaire.d_2_10, d_2_11: @questionnaire.d_2_11, d_2_12: @questionnaire.d_2_12, d_2_13: @questionnaire.d_2_13, d_2_14: @questionnaire.d_2_14, d_2_15: @questionnaire.d_2_15, d_2_16: @questionnaire.d_2_16, d_2_17: @questionnaire.d_2_17, d_2_18: @questionnaire.d_2_18, d_2_19: @questionnaire.d_2_19, d_2_1: @questionnaire.d_2_1, d_2_20: @questionnaire.d_2_20, d_2_2: @questionnaire.d_2_2, d_2_3: @questionnaire.d_2_3, d_2_4: @questionnaire.d_2_4, d_2_5: @questionnaire.d_2_5, d_2_6: @questionnaire.d_2_6, d_2_7: @questionnaire.d_2_7, d_2_8: @questionnaire.d_2_8, d_2_9: @questionnaire.d_2_9, d_3: @questionnaire.d_3, filling_date: @questionnaire.filling_date, fio: @questionnaire.fio, index: @questionnaire.index, industrial_presence: @questionnaire.industrial_presence, phone_number: @questionnaire.phone_number, school_number: @questionnaire.school_number, sex: @questionnaire.sex, stay_duration: @questionnaire.stay_duration, street: @questionnaire.street } }
    end

    assert_redirected_to questionnaire_url(Questionnaire.last)
  end

  test "should show questionnaire" do
    get questionnaire_url(@questionnaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionnaire_url(@questionnaire)
    assert_response :success
  end

  test "should update questionnaire" do
    patch questionnaire_url(@questionnaire), params: { questionnaire: { a_1: @questionnaire.a_1, a_2: @questionnaire.a_2, a_3: @questionnaire.a_3, a_4: @questionnaire.a_4, a_5: @questionnaire.a_5, a_6: @questionnaire.a_6, a_7: @questionnaire.a_7, a_8: @questionnaire.a_8, age: @questionnaire.age, apartment: @questionnaire.apartment, b_1: @questionnaire.b_1, b_2: @questionnaire.b_2, b_3: @questionnaire.b_3, b_4_01: @questionnaire.b_4_01, b_4_02: @questionnaire.b_4_02, b_4_03: @questionnaire.b_4_03, b_4_04: @questionnaire.b_4_04, b_4_05: @questionnaire.b_4_05, b_4_06: @questionnaire.b_4_06, b_4_07: @questionnaire.b_4_07, b_4_08: @questionnaire.b_4_08, b_4_09: @questionnaire.b_4_09, b_4_10: @questionnaire.b_4_10, b_4_11: @questionnaire.b_4_11, b_4_12: @questionnaire.b_4_12, b_5: @questionnaire.b_5, b_6: @questionnaire.b_6, birth_date: @questionnaire.birth_date, building: @questionnaire.building, c_1: @questionnaire.c_1, c_2: @questionnaire.c_2, c_3: @questionnaire.c_3, c_4: @questionnaire.c_4, c_5: @questionnaire.c_5, c_6: @questionnaire.c_6, c_7: @questionnaire.c_7, city: @questionnaire.city, d_1_0: @questionnaire.d_1_0, d_1_10: @questionnaire.d_1_10, d_1_11: @questionnaire.d_1_11, d_1_12: @questionnaire.d_1_12, d_1_13: @questionnaire.d_1_13, d_1_14: @questionnaire.d_1_14, d_1_15: @questionnaire.d_1_15, d_1_16: @questionnaire.d_1_16, d_1_17: @questionnaire.d_1_17, d_1_18: @questionnaire.d_1_18, d_1_19: @questionnaire.d_1_19, d_1_1: @questionnaire.d_1_1, d_1_20: @questionnaire.d_1_20, d_1_20_description: @questionnaire.d_1_20_description, d_1_2: @questionnaire.d_1_2, d_1_3: @questionnaire.d_1_3, d_1_4: @questionnaire.d_1_4, d_1_5: @questionnaire.d_1_5, d_1_6: @questionnaire.d_1_6, d_1_7: @questionnaire.d_1_7, d_1_8: @questionnaire.d_1_8, d_1_9: @questionnaire.d_1_9, d_2_0: @questionnaire.d_2_0, d_2_10: @questionnaire.d_2_10, d_2_11: @questionnaire.d_2_11, d_2_12: @questionnaire.d_2_12, d_2_13: @questionnaire.d_2_13, d_2_14: @questionnaire.d_2_14, d_2_15: @questionnaire.d_2_15, d_2_16: @questionnaire.d_2_16, d_2_17: @questionnaire.d_2_17, d_2_18: @questionnaire.d_2_18, d_2_19: @questionnaire.d_2_19, d_2_1: @questionnaire.d_2_1, d_2_20: @questionnaire.d_2_20, d_2_2: @questionnaire.d_2_2, d_2_3: @questionnaire.d_2_3, d_2_4: @questionnaire.d_2_4, d_2_5: @questionnaire.d_2_5, d_2_6: @questionnaire.d_2_6, d_2_7: @questionnaire.d_2_7, d_2_8: @questionnaire.d_2_8, d_2_9: @questionnaire.d_2_9, d_3: @questionnaire.d_3, filling_date: @questionnaire.filling_date, fio: @questionnaire.fio, index: @questionnaire.index, industrial_presence: @questionnaire.industrial_presence, phone_number: @questionnaire.phone_number, school_number: @questionnaire.school_number, sex: @questionnaire.sex, stay_duration: @questionnaire.stay_duration, street: @questionnaire.street } }
    assert_redirected_to questionnaire_url(@questionnaire)
  end

  test "should destroy questionnaire" do
    assert_difference('Questionnaire.count', -1) do
      delete questionnaire_url(@questionnaire)
    end

    assert_redirected_to questionnaires_url
  end
end
