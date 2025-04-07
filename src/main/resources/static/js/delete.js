/**
 * 
 */
function confirmDelete(id) {
    Swal.fire({
      title: '정말 삭제하시겠습니까?',
      text: "삭제한 데이터는 복구할 수 없습니다.",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#d33',
      cancelButtonColor: '#3085d6',
      confirmButtonText: '삭제하기',
      cancelButtonText: '취소'
    }).then((result) => {
    console.log(result);
    console.log(id);
      if (result.isConfirmed) {
        document.getElementById("deleteForm_"+id).submit();
      }
    });
  }

  // 삭제 성공/실패 알림
  document.addEventListener('DOMContentLoaded', () => {
      const urlParams = new URLSearchParams(window.location.search);
      const deleted = urlParams.get('deleted');

      if (deleted === 'true') {
        Swal.fire({
          icon: 'success',
          title: '삭제 완료',
          text: '항목이 성공적으로 삭제되었습니다.',
          timer: 1500,
          showConfirmButton: false
        });
      } else if (deleted === 'false') {
        Swal.fire({
          icon: 'error',
          title: '삭제 실패',
          text: '항목 삭제 중 오류가 발생했습니다.',
          confirmButtonText: '확인'
        });
      }
    });