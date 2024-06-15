import 'dart:convert';
/// id : 240
/// code : null
/// first_name : "Abhishek"
/// last_name : "Sharma"
/// mobile_no : "8107116566"
/// email : null
/// otp : ""
/// isEmail : 0
/// isSMS : 0
/// role_id : 2
/// type : "Employee"
/// status : "Active"
/// login_approvel : "0"
/// device_id : "sasas"
/// device_type : "Android"
/// fcm_token : "sasas"
/// remember_token : null
/// file : null
/// is_otp_submit : "0"
/// profile : "profile/65083622cd229.jpg"
/// created_at : null
/// updated_at : "2024-06-07T10:23:22.000000Z"
/// company_id : 1
/// employee_details : {"id":182,"unique_id":3,"reffer_by":null,"owner_id":38,"user_id":240,"company_id":1,"designation_id":4,"department_id":3,"sub_designation_id":null,"employment_type_id":1,"working_shift_id":null,"shift_start_time":null,"shift_end_time":null,"working_hours":null,"salary":null,"is_transfered":null,"joining_date":"2023-09-12","employee_code_state":null,"created_by":37,"comp_off":"0.5","carry_forward_count":0,"is_basic":0,"father_name":null,"mother_name":null,"alternate_mobile":null,"attendance_check_in":1,"created_at":"2023-09-12T12:01:27.000000Z","updated_at":"2024-05-16T00:23:43.000000Z"}

GetOtp resaFromJson(String str) => GetOtp.fromJson(json.decode(str));
String resaToJson(GetOtp data) => json.encode(data.toJson());
class GetOtp {
  GetOtp({
      num? id, 
      dynamic code, 
      String? firstName, 
      String? lastName, 
      String? mobileNo, 
      dynamic email, 
      String? otp, 
      num? isEmail, 
      num? isSMS, 
      num? roleId, 
      String? type, 
      String? status, 
      String? loginApprovel, 
      String? deviceId, 
      String? deviceType, 
      String? fcmToken, 
      dynamic rememberToken, 
      dynamic file, 
      String? isOtpSubmit, 
      String? profile, 
      dynamic createdAt, 
      String? updatedAt, 
      num? companyId, 
      EmployeeDetails? employeeDetails,}){
    _id = id;
    _code = code;
    _firstName = firstName;
    _lastName = lastName;
    _mobileNo = mobileNo;
    _email = email;
    _otp = otp;
    _isEmail = isEmail;
    _isSMS = isSMS;
    _roleId = roleId;
    _type = type;
    _status = status;
    _loginApprovel = loginApprovel;
    _deviceId = deviceId;
    _deviceType = deviceType;
    _fcmToken = fcmToken;
    _rememberToken = rememberToken;
    _file = file;
    _isOtpSubmit = isOtpSubmit;
    _profile = profile;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _companyId = companyId;
    _employeeDetails = employeeDetails;
}

  GetOtp.fromJson(dynamic json) {
    _id = json['id'];
    _code = json['code'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _mobileNo = json['mobile_no'];
    _email = json['email'];
    _otp = json['otp'];
    _isEmail = json['isEmail'];
    _isSMS = json['isSMS'];
    _roleId = json['role_id'];
    _type = json['type'];
    _status = json['status'];
    _loginApprovel = json['login_approvel'];
    _deviceId = json['device_id'];
    _deviceType = json['device_type'];
    _fcmToken = json['fcm_token'];
    _rememberToken = json['remember_token'];
    _file = json['file'];
    _isOtpSubmit = json['is_otp_submit'];
    _profile = json['profile'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _companyId = json['company_id'];
    _employeeDetails = json['employee_details'] != null ? EmployeeDetails.fromJson(json['employee_details']) : null;
  }
  num? _id;
  dynamic _code;
  String? _firstName;
  String? _lastName;
  String? _mobileNo;
  dynamic _email;
  String? _otp;
  num? _isEmail;
  num? _isSMS;
  num? _roleId;
  String? _type;
  String? _status;
  String? _loginApprovel;
  String? _deviceId;
  String? _deviceType;
  String? _fcmToken;
  dynamic _rememberToken;
  dynamic _file;
  String? _isOtpSubmit;
  String? _profile;
  dynamic _createdAt;
  String? _updatedAt;
  num? _companyId;
  EmployeeDetails? _employeeDetails;
GetOtp copyWith({  num? id,
  dynamic code,
  String? firstName,
  String? lastName,
  String? mobileNo,
  dynamic email,
  String? otp,
  num? isEmail,
  num? isSMS,
  num? roleId,
  String? type,
  String? status,
  String? loginApprovel,
  String? deviceId,
  String? deviceType,
  String? fcmToken,
  dynamic rememberToken,
  dynamic file,
  String? isOtpSubmit,
  String? profile,
  dynamic createdAt,
  String? updatedAt,
  num? companyId,
  EmployeeDetails? employeeDetails,
}) => GetOtp(  id: id ?? _id,
  code: code ?? _code,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  mobileNo: mobileNo ?? _mobileNo,
  email: email ?? _email,
  otp: otp ?? _otp,
  isEmail: isEmail ?? _isEmail,
  isSMS: isSMS ?? _isSMS,
  roleId: roleId ?? _roleId,
  type: type ?? _type,
  status: status ?? _status,
  loginApprovel: loginApprovel ?? _loginApprovel,
  deviceId: deviceId ?? _deviceId,
  deviceType: deviceType ?? _deviceType,
  fcmToken: fcmToken ?? _fcmToken,
  rememberToken: rememberToken ?? _rememberToken,
  file: file ?? _file,
  isOtpSubmit: isOtpSubmit ?? _isOtpSubmit,
  profile: profile ?? _profile,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  companyId: companyId ?? _companyId,
  employeeDetails: employeeDetails ?? _employeeDetails,
);
  num? get id => _id;
  dynamic get code => _code;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get mobileNo => _mobileNo;
  dynamic get email => _email;
  String? get otp => _otp;
  num? get isEmail => _isEmail;
  num? get isSMS => _isSMS;
  num? get roleId => _roleId;
  String? get type => _type;
  String? get status => _status;
  String? get loginApprovel => _loginApprovel;
  String? get deviceId => _deviceId;
  String? get deviceType => _deviceType;
  String? get fcmToken => _fcmToken;
  dynamic get rememberToken => _rememberToken;
  dynamic get file => _file;
  String? get isOtpSubmit => _isOtpSubmit;
  String? get profile => _profile;
  dynamic get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get companyId => _companyId;
  EmployeeDetails? get employeeDetails => _employeeDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['code'] = _code;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['mobile_no'] = _mobileNo;
    map['email'] = _email;
    map['otp'] = _otp;
    map['isEmail'] = _isEmail;
    map['isSMS'] = _isSMS;
    map['role_id'] = _roleId;
    map['type'] = _type;
    map['status'] = _status;
    map['login_approvel'] = _loginApprovel;
    map['device_id'] = _deviceId;
    map['device_type'] = _deviceType;
    map['fcm_token'] = _fcmToken;
    map['remember_token'] = _rememberToken;
    map['file'] = _file;
    map['is_otp_submit'] = _isOtpSubmit;
    map['profile'] = _profile;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['company_id'] = _companyId;
    if (_employeeDetails != null) {
      map['employee_details'] = _employeeDetails?.toJson();
    }
    return map;
  }

}

/// id : 182
/// unique_id : 3
/// reffer_by : null
/// owner_id : 38
/// user_id : 240
/// company_id : 1
/// designation_id : 4
/// department_id : 3
/// sub_designation_id : null
/// employment_type_id : 1
/// working_shift_id : null
/// shift_start_time : null
/// shift_end_time : null
/// working_hours : null
/// salary : null
/// is_transfered : null
/// joining_date : "2023-09-12"
/// employee_code_state : null
/// created_by : 37
/// comp_off : "0.5"
/// carry_forward_count : 0
/// is_basic : 0
/// father_name : null
/// mother_name : null
/// alternate_mobile : null
/// attendance_check_in : 1
/// created_at : "2023-09-12T12:01:27.000000Z"
/// updated_at : "2024-05-16T00:23:43.000000Z"

EmployeeDetails employeeDetailsFromJson(String str) => EmployeeDetails.fromJson(json.decode(str));
String employeeDetailsToJson(EmployeeDetails data) => json.encode(data.toJson());
class EmployeeDetails {
  EmployeeDetails({
      num? id, 
      num? uniqueId, 
      dynamic refferBy, 
      num? ownerId, 
      num? userId, 
      num? companyId, 
      num? designationId, 
      num? departmentId, 
      dynamic subDesignationId, 
      num? employmentTypeId, 
      dynamic workingShiftId, 
      dynamic shiftStartTime, 
      dynamic shiftEndTime, 
      dynamic workingHours, 
      dynamic salary, 
      dynamic isTransfered, 
      String? joiningDate, 
      dynamic employeeCodeState, 
      num? createdBy, 
      String? compOff, 
      num? carryForwardCount, 
      num? isBasic, 
      dynamic fatherName, 
      dynamic motherName, 
      dynamic alternateMobile, 
      num? attendanceCheckIn, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _uniqueId = uniqueId;
    _refferBy = refferBy;
    _ownerId = ownerId;
    _userId = userId;
    _companyId = companyId;
    _designationId = designationId;
    _departmentId = departmentId;
    _subDesignationId = subDesignationId;
    _employmentTypeId = employmentTypeId;
    _workingShiftId = workingShiftId;
    _shiftStartTime = shiftStartTime;
    _shiftEndTime = shiftEndTime;
    _workingHours = workingHours;
    _salary = salary;
    _isTransfered = isTransfered;
    _joiningDate = joiningDate;
    _employeeCodeState = employeeCodeState;
    _createdBy = createdBy;
    _compOff = compOff;
    _carryForwardCount = carryForwardCount;
    _isBasic = isBasic;
    _fatherName = fatherName;
    _motherName = motherName;
    _alternateMobile = alternateMobile;
    _attendanceCheckIn = attendanceCheckIn;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  EmployeeDetails.fromJson(dynamic json) {
    _id = json['id'];
    _uniqueId = json['unique_id'];
    _refferBy = json['reffer_by'];
    _ownerId = json['owner_id'];
    _userId = json['user_id'];
    _companyId = json['company_id'];
    _designationId = json['designation_id'];
    _departmentId = json['department_id'];
    _subDesignationId = json['sub_designation_id'];
    _employmentTypeId = json['employment_type_id'];
    _workingShiftId = json['working_shift_id'];
    _shiftStartTime = json['shift_start_time'];
    _shiftEndTime = json['shift_end_time'];
    _workingHours = json['working_hours'];
    _salary = json['salary'];
    _isTransfered = json['is_transfered'];
    _joiningDate = json['joining_date'];
    _employeeCodeState = json['employee_code_state'];
    _createdBy = json['created_by'];
    _compOff = json['comp_off'];
    _carryForwardCount = json['carry_forward_count'];
    _isBasic = json['is_basic'];
    _fatherName = json['father_name'];
    _motherName = json['mother_name'];
    _alternateMobile = json['alternate_mobile'];
    _attendanceCheckIn = json['attendance_check_in'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  num? _uniqueId;
  dynamic _refferBy;
  num? _ownerId;
  num? _userId;
  num? _companyId;
  num? _designationId;
  num? _departmentId;
  dynamic _subDesignationId;
  num? _employmentTypeId;
  dynamic _workingShiftId;
  dynamic _shiftStartTime;
  dynamic _shiftEndTime;
  dynamic _workingHours;
  dynamic _salary;
  dynamic _isTransfered;
  String? _joiningDate;
  dynamic _employeeCodeState;
  num? _createdBy;
  String? _compOff;
  num? _carryForwardCount;
  num? _isBasic;
  dynamic _fatherName;
  dynamic _motherName;
  dynamic _alternateMobile;
  num? _attendanceCheckIn;
  String? _createdAt;
  String? _updatedAt;
EmployeeDetails copyWith({  num? id,
  num? uniqueId,
  dynamic refferBy,
  num? ownerId,
  num? userId,
  num? companyId,
  num? designationId,
  num? departmentId,
  dynamic subDesignationId,
  num? employmentTypeId,
  dynamic workingShiftId,
  dynamic shiftStartTime,
  dynamic shiftEndTime,
  dynamic workingHours,
  dynamic salary,
  dynamic isTransfered,
  String? joiningDate,
  dynamic employeeCodeState,
  num? createdBy,
  String? compOff,
  num? carryForwardCount,
  num? isBasic,
  dynamic fatherName,
  dynamic motherName,
  dynamic alternateMobile,
  num? attendanceCheckIn,
  String? createdAt,
  String? updatedAt,
}) => EmployeeDetails(  id: id ?? _id,
  uniqueId: uniqueId ?? _uniqueId,
  refferBy: refferBy ?? _refferBy,
  ownerId: ownerId ?? _ownerId,
  userId: userId ?? _userId,
  companyId: companyId ?? _companyId,
  designationId: designationId ?? _designationId,
  departmentId: departmentId ?? _departmentId,
  subDesignationId: subDesignationId ?? _subDesignationId,
  employmentTypeId: employmentTypeId ?? _employmentTypeId,
  workingShiftId: workingShiftId ?? _workingShiftId,
  shiftStartTime: shiftStartTime ?? _shiftStartTime,
  shiftEndTime: shiftEndTime ?? _shiftEndTime,
  workingHours: workingHours ?? _workingHours,
  salary: salary ?? _salary,
  isTransfered: isTransfered ?? _isTransfered,
  joiningDate: joiningDate ?? _joiningDate,
  employeeCodeState: employeeCodeState ?? _employeeCodeState,
  createdBy: createdBy ?? _createdBy,
  compOff: compOff ?? _compOff,
  carryForwardCount: carryForwardCount ?? _carryForwardCount,
  isBasic: isBasic ?? _isBasic,
  fatherName: fatherName ?? _fatherName,
  motherName: motherName ?? _motherName,
  alternateMobile: alternateMobile ?? _alternateMobile,
  attendanceCheckIn: attendanceCheckIn ?? _attendanceCheckIn,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num? get id => _id;
  num? get uniqueId => _uniqueId;
  dynamic get refferBy => _refferBy;
  num? get ownerId => _ownerId;
  num? get userId => _userId;
  num? get companyId => _companyId;
  num? get designationId => _designationId;
  num? get departmentId => _departmentId;
  dynamic get subDesignationId => _subDesignationId;
  num? get employmentTypeId => _employmentTypeId;
  dynamic get workingShiftId => _workingShiftId;
  dynamic get shiftStartTime => _shiftStartTime;
  dynamic get shiftEndTime => _shiftEndTime;
  dynamic get workingHours => _workingHours;
  dynamic get salary => _salary;
  dynamic get isTransfered => _isTransfered;
  String? get joiningDate => _joiningDate;
  dynamic get employeeCodeState => _employeeCodeState;
  num? get createdBy => _createdBy;
  String? get compOff => _compOff;
  num? get carryForwardCount => _carryForwardCount;
  num? get isBasic => _isBasic;
  dynamic get fatherName => _fatherName;
  dynamic get motherName => _motherName;
  dynamic get alternateMobile => _alternateMobile;
  num? get attendanceCheckIn => _attendanceCheckIn;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['unique_id'] = _uniqueId;
    map['reffer_by'] = _refferBy;
    map['owner_id'] = _ownerId;
    map['user_id'] = _userId;
    map['company_id'] = _companyId;
    map['designation_id'] = _designationId;
    map['department_id'] = _departmentId;
    map['sub_designation_id'] = _subDesignationId;
    map['employment_type_id'] = _employmentTypeId;
    map['working_shift_id'] = _workingShiftId;
    map['shift_start_time'] = _shiftStartTime;
    map['shift_end_time'] = _shiftEndTime;
    map['working_hours'] = _workingHours;
    map['salary'] = _salary;
    map['is_transfered'] = _isTransfered;
    map['joining_date'] = _joiningDate;
    map['employee_code_state'] = _employeeCodeState;
    map['created_by'] = _createdBy;
    map['comp_off'] = _compOff;
    map['carry_forward_count'] = _carryForwardCount;
    map['is_basic'] = _isBasic;
    map['father_name'] = _fatherName;
    map['mother_name'] = _motherName;
    map['alternate_mobile'] = _alternateMobile;
    map['attendance_check_in'] = _attendanceCheckIn;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}