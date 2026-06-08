#include <windows.h>

int main() {
    // твой shellcode
    unsigned char shellcode[] = { 0xB8, 0x05, 0x00, 0x00, 0x00, 0xC3 };
    
    // выделяем память с правом выполнения
    void *exec = VirtualAlloc(0, sizeof(shellcode), MEM_COMMIT, PAGE_EXECUTE_READWRITE);
    
    // копируем shellcode в память
    memcpy(exec, shellcode, sizeof(shellcode));
    
    // выполняем
    ((void(*)())exec)();
    
    return 0;
}