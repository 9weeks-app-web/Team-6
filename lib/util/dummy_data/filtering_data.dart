List<String> recruitSearchCriteria = [
  '지역',
  '직무',
  '분야',
  '경력',
  '기술ㆍ스택',
];

Map<String, List<String>> koreaRegions = {
  '서울': [
    '전체',
    '강남구',
    '강동구',
    '강북구',
    '강서구',
    '관악구',
    '광진구',
    '구로구',
    '금천구',
    '노원구',
    '도봉구',
    '동대문구',
    '동작구',
    '마포구',
    '서대문구',
    '서초구',
    '성동구',
    '성북구',
    '송파구',
    '양천구',
    '영등포구',
    '용산구',
    '은평구',
    '종로구',
    '중구',
    '중랑구'
  ],
  '부산': [
    '전체',
    '강서구',
    '금정구',
    '남구',
    '동구',
    '동래구',
    '부산진구',
    '북구',
    '사상구',
    '사하구',
    '서구',
    '수영구',
    '연제구',
    '영도구',
    '중구',
    '해운대구',
  ],
  '대구': ['전체', '남구', '달서구', '달성군', '동구', '북구', '서구', '수성구'],
  '인천': ['전체', '강화군', '계양구', '미추홀구', '남동구', '동구', '부평구', '서구', '연수구', '옹진군'],
  '광주': ['전체', '광산구', '남구', '동구', '북구', '서구'],
  '대전': ['전체', '대덕구', '동구', '서구', '유성구'],
  '울산': ['전체', '남구', '동구', '북구', '울주군'],
  '세종': ['전체', '세종특별자치시'],
  '경기': [
    '전체',
    '가평군',
    '고양시',
    '과천시',
    '광명시',
    '광주시',
    '구리시',
    '군포시',
    '김포시',
    '남양주시',
    '동두천시',
    '부천시',
    '성남시',
    '수원시',
    '시흥시',
    '안산시',
    '안성시',
    '안양시',
    '양주시',
    '양평군',
    '여주시',
    '연천군',
    '오산시',
    '용인시',
    '의왕시',
    '의정부시',
    '이천시',
    '파주시',
    '평택시',
    '포천시',
    '하남시',
    '화성시'
  ],
  '강원도': [
    '전체',
    '강릉시',
    '고성군',
    '동해시',
    '삼척시',
    '속초시',
    '양구군',
    '양양군',
    '영월군',
    '원주시',
    '인제군',
    '정선군',
    '철원군',
    '춘천시',
    '태백시',
    '평창군',
    '홍천군',
    '화천군',
    '횡성군',
  ],
  '전북': [
    '전체',
    '고창군',
    '군산시',
    '김제시',
    '남원시',
    '무주군',
    '부안군',
    '순창군',
    '완주군',
    '익산시',
    '임실군',
    '장수군',
    '전주시',
    '정읍시',
    '진안군',
  ],
  '경남': [
    '전체',
    '거제시',
    '거창군',
    '고성군',
    '김해시',
    '남해군',
    '밀양시',
    '사천시',
    '산청군',
    '양산시',
    '의령군',
    '진주시',
    '창녕군',
    '창원시',
    '통영시',
    '하동군',
    '함안군',
    '함양군',
    '합천군',
  ],
  '제주도': ['전체', '서귀포시', '제주시'],
};

List<String> jobs = [
  '개발',
  '디자인',
  '경영/비즈니스',
  '마케팅/광고',
  '영업',
  '고객서비스/리테일',
  '미디어',
  'HR',
  '엔지니어링/설계',
  '게임제작',
  '금융',
  '제조/생산',
  '의료/제작/바이오',
  '교육',
  '물류/무역',
  '식/음료',
  '법률/법집행기관',
  '건설/시설',
];

Map<String, dynamic> fields = {
  '디자인': {
    '디자인 전체',
    '3D디자이너',
    'UX디자이너',
    'UI,GUI 디자이너',
    '웹 디자이너',
    '그래픽 디자이너',
    '광고 디자이너',
    'BI/BX 디자이너',
    '영상,모션 디자이너',
    '아트 디렉터',
    '일러스트레이터',
    '패션 디자이너',
    '공간 디자이너',
    '출판,편집 디자이너',
    '인테리어 디자이너',
    '산업 디자이너',
    '캐릭터 디자이너',
    '가구 디자이너',
    '전시 디자이너',
    '패브릭 디자이너',
    'VMD',
  },
};

List<String> skills = [
  'Adobe Photoshop',
  'Sketch',
  'Adobe illustrator',
  'UI 디자인',
  'UX 디자인',
  'GUI 디자인',
  '그래픽 디자인',
  'Adobe XD',
  '타이포그래피',
  '스케치',
  '서비스 디자인',
  '브랜딩',
  '인터랙션 디자인',
  '제품 디자인',
  '웹 디자인',
  'Zeplin',
  'Figma',
  'HCI',
  'ProtoPie',
  'HTML',
  'CSS',
  '3D',
  'UIUX 기획',
  '모바일디자인',
];
