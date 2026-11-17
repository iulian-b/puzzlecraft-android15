.class public Lcom/fusepowered/nx/common/DeviceFriendlyNameHelper;
.super Ljava/lang/Object;
.source "DeviceFriendlyNameHelper.java"


# instance fields
.field private final KNOWN_DEVICES:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x57

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "HTC One|htc_mecdwg|HTC M8Sd"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "HTC One|htc_mectl|HTC M8St"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HTC One|htc_mectl|HTC One_E8"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "HTC One|htc_mecul|HTC One_E8"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "HTC One|htc_mecul|HTC_M8Sx"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HTC One|htc_mecwhl|0PAJ5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "HTC One|htc_mecdug|HTC One_E8 dual sim"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HTC One|htc_mecdwg|HTC 0PAJ4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HTC One|htc_mecdwg|HTC One_E8 dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HTC One|htc_mectl|HTC M8St"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HTC One|htc_mectl|HTC M8Ss"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "HTC One|m7|HTC 801e"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "HTC One|m7|HTC One 801e"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "HTC One|m7|HTC One"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "HTC One|m7|HTC_PN071"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "HTC One|m7cdtu|HTC 802t 16GB"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "HTC One|m7cdtu|HTC 802t"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "HTC One|m7cdug|HTC 802w"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "HTC One|m7cdug|HTC One dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "HTC One|m7cdwg|HTC 802d"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HTC One|m7cdwg|HTC One dual 802d"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "HTC One|m7cdwg|HTC One dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "HTC One|m7wls|HTC One"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "HTC One|m7wls|HTCONE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "HTC One|m7wlv|HTC One"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "HTC One|m7wlv|HTC6500LVW"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "HTC One|htc_m8dug|HTC M8e"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "HTC One|htc_m8|HTC M8w"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "HTC One|htc_m8|HTC One_M8"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "HTC One|htc_m8|HTC_0P6B"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "HTC One|htc_m8|HTC_0P6B6"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "HTC One|htc_m8|HTC_M8x"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "HTC One|htc_m8dug|HTC One_M8 dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "HTC One|htc_m8dwg|HTC M8d"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "HTC One|htc_m8whl|831C"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "HTC One|htc_m8wl|HTC One_M8"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "HTC One|htc_m8wl|HTC6525LVW"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "HTC One 801e|m7|HTC One 801e"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "HTC One 801e|m7|HTC One 801s"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "HTC One Dual 802d|m7cdwg|HTC One dual 802d"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "HTC One Dual Sim|m7cdwg|HTC One dual sim"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "HTC One E8 dual|htc_mecdwg|HTC_M8Sd"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "HTC One Google Play edition|m7|HTC One"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "HTC One M8 eye 4G LTE|htc_melstuhl|HTC M8Et"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "HTC One M8 eye 4G LTE|htc_melsuhl|HTC M8Ew"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "HTC One max|t6ul|HTC One max"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "HTC One max|t6ul|HTC_One_max"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "HTC One max|t6whl|HTC0P3P7"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "HTC One mini|htc_m4|HTC One mini"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "HTC One mini|m4|HTC One mini"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "HTC One mini|m4|HTC_One_mini_601e"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "HTC One mini|m4|HTC_PO582"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "HTC One mini 2|htc_memul|HTC One mini 2"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "HTC One mini 2|htc_memul|HTC_M8MINx"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "HTC One mini 2|htc_memul|HTC_One_mini_2"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "HTC One mini 601E|m4|HTC_One_mini_601e"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "HTC One mini2|htc_memul|HTC One mini 2"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "HTC One remix|htc_memwl|HTC6515LVW"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "HTC One S|ville|HTC One S"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "HTC One S|ville|HTC VLE_U"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "HTC One S|villec2|HTC One S"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "HTC One S Special Edition|villeplus|HTC One S Special Edition"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "HTC One SC|cp2dcg|HTC One SC T528d"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "HTC One SC|cp2dcg|HTC One SC"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "HTC One SV|k2cl|C525c"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "HTC One SV|k2plccl|HTC One SV"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "HTC ONE SV|k2u|HTC K2_U"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "HTC ONE SV|k2u|HTC One SV"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "HTC One SV|k2ul|HTC K2_UL"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "HTC One SV|k2ul|HTC One SV"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "HTC ONE SV|k2ul|HTC One SV"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "HTC One SV BLK|k2plccl|HTC One SV BLK"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "HTC One SV BLK|k2plccl|HTC One SV"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "HTC One V|primoc|HTC One V"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "HTC One V|primou|HTC ONE V"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "HTC One V|primou|HTC One V"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "HTC One VX|totemc2|HTC One VX"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "HTC One X|endeavoru|HTC One X"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "HTC One X|evita|HTC One X"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "HTC One X+|enrc2b|HTC One X+"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "HTC One X+|evitareul|HTC One X+"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "HTC One XL|evita|HTC One X"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "HTC One XL|evita|HTC One XL"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "HTC One XL|evita|HTC_One_XL"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "HTC One XL|evitautl|HTC EVA_UTL"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "HTC One_E8|htc_mecul_emea|HTC One_E8"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "HTC Onex X|endeavoru|HTC One X"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/fusepowered/nx/common/DeviceFriendlyNameHelper;->KNOWN_DEVICES:[Ljava/lang/String;

    return-void
.end method

.method private capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 154
    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 155
    .local v0, "arr":[C
    const/4 v2, 0x1

    .line 156
    .local v2, "capitalizeNext":Z
    const-string v3, ""

    .line 157
    .local v3, "phrase":Ljava/lang/String;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-char v1, v0, v4

    .line 158
    .local v1, "c":C
    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    const/4 v2, 0x0

    .line 157
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 162
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 163
    const/4 v2, 0x1

    .line 165
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .end local v1    # "c":C
    :cond_3
    move-object p1, v3

    .line 167
    goto :goto_0
.end method


# virtual methods
.method public getDeviceName()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/fusepowered/nx/common/DeviceFriendlyNameHelper;->KNOWN_DEVICES:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v3, v6, v4

    .line 174
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 175
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    .line 187
    .end local v3    # "str":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 173
    .restart local v3    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 179
    .local v1, "manufacturer":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 180
    .local v2, "model":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    invoke-direct {p0, v2}, Lcom/fusepowered/nx/common/DeviceFriendlyNameHelper;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 183
    :cond_2
    const-string v4, "htc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTC "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 187
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/fusepowered/nx/common/DeviceFriendlyNameHelper;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
