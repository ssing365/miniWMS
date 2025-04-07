# miniWMS
## ✔️ 프로젝트 개요

> **`Spring MVC`** 기반으로 구현된 **WMS**(창고 관리 시스템) 미니 프로젝트
> 
- **상품 등록/수정/삭제/조회(CRUD)** 기능 구현
- **Controller → Service → Mapper → View(`JSP`)** 구조로 데이터 흐름 설계
- **`MyBatis`와 Mapper 인터페이스**를 활용한 SQL 매핑 처리
- 데이터 저장은 **`H2` DB**에, **H2 콘솔**을 통해 개발 중 데이터 상태 확인 가능

## ✔️ 구현 화면

- **메인 화면**
    ![1](https://github.com/user-attachments/assets/d6a68a1e-9346-45c8-a901-8a02bb2db3a5)

    
- **재고 목록**
    - 등록된 상품 정보를 테이블 형태로 확인 가능
    - 수정/삭제 기능 제공

![2](https://github.com/user-attachments/assets/0d203870-cd1d-4a58-9671-f0979ba57e2c)

- **재고 등록/수정**
    - 상품명, 가격, 수량 등의 정보를 입력하여 저장 가능
    - 수정은 기존 상품 정보를 form에 불러와서 수정 후 저장
        ![3](https://github.com/user-attachments/assets/14a54d81-24b2-4240-af31-42803616526a)

        ![4](https://github.com/user-attachments/assets/21b136d6-baf2-43f3-8c6d-12243d9533bb)


## ✅ 느낀점

---

- 처음엔 Mac 환경에서 Oracle XE Docker 이미지를 사용하려 했지만, 램 용량 확보 문제로 인해 **H2 Database로 방향을 전환**했다. 결과적으로 빠른 테스트 및 콘솔 접근이 가능해져 개발 효율이 향상되었다. 
또한 **Docker**의 개념을 새롭게 배우며 편리한 툴이라는 것을 알게되었고 더 실습해보고 싶다는 생각이 들었다.
- 기업의 주요 사업 중 하나인 WMS(창고관리시스템)에 대해 접하고, 이를 간단한 CRUD로 직접 구현해보며 실습한 경험이 유익했다.
- **Controller-Service-Mapper 구조**에 익숙해졌고, MyBatis의 SQL 매핑 방식도 다시 한번 복습할 수 있었다.
- 특히 수정/삭제 시 URL 매핑 문제를 직접 디버깅하면서, **@PathVariable의 동작 방식**과 Spring의 내부 동작 원리를 조금 더 이해하게 되었다.
