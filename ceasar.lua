local lettersToEncrypt = {
    uppercase = {65; 90};
    lowercase = {97; 122};
}

function encrypt(str, key)
    local encrypted = ""
    
    for i = 1, #str do
        local letter = str:sub(i, i)
        local ascii = string.byte(letter)
        
        local encrypt
        for _, range in pairs(lettersToEncrypt) do
            if ascii >= range[1] and ascii <= range[2] then
                encrypt = true
            end
        end
        
        if encrypt then
            local method = 0
            for _, range in pairs(lettersToEncrypt) do
                if ascii + key % 26 >= range[1] and ascii + key % 26 <= range[2] then
                    method = 1
                end
            end
            
            if method == 0 then
                encrypted = encrypted .. string.char(ascii + key % 26 - 26)
            else
                encrypted = encrypted .. string.char(ascii + key % 26)
            end
        else
            encrypted = encrypted .. letter
        end
    end
    
    return encrypted
end

function decrypt(str, key)
    local decrypted = ""
    
    for i = 1, #str do
        local letter = str:sub(i, i)
        local ascii = string.byte(letter)
        
        local decrypt
        for _, range in pairs(lettersToEncrypt) do
            if ascii >= range[1] and ascii <= range[2] then
                decrypt = true
            end
        end
        
        if decrypt then
            local decryptedChar = string.char(ascii - key)
            decrypted = decrypted .. decryptedChar
        else
            decrypted = decrypted .. letter
        end
    end
    
    return decrypted
end

local str = "Ceasar cipher test."
math.randomseed = os.time()
local key = 5

local encryptedStr = encrypt(str, key)
for i = 1, 26 do
    print(decrypt(encryptedStr, i))
end

print("\n"..encryptedStr)
