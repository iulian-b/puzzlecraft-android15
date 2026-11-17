.class public final enum Lcom/fusepowered/util/Gender;
.super Ljava/lang/Enum;
.source "Gender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/Gender;

.field public static final enum FEMALE:Lcom/fusepowered/util/Gender;

.field public static final enum MALE:Lcom/fusepowered/util/Gender;

.field public static final enum UNDECIDED:Lcom/fusepowered/util/Gender;

.field public static final enum UNKNOWN:Lcom/fusepowered/util/Gender;

.field public static final enum WITHHELD:Lcom/fusepowered/util/Gender;


# instance fields
.field private genderCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/fusepowered/util/Gender;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/fusepowered/util/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/Gender;->UNKNOWN:Lcom/fusepowered/util/Gender;

    .line 5
    new-instance v0, Lcom/fusepowered/util/Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v3, v3}, Lcom/fusepowered/util/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/Gender;->MALE:Lcom/fusepowered/util/Gender;

    .line 6
    new-instance v0, Lcom/fusepowered/util/Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v4, v4}, Lcom/fusepowered/util/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/Gender;->FEMALE:Lcom/fusepowered/util/Gender;

    .line 7
    new-instance v0, Lcom/fusepowered/util/Gender;

    const-string v1, "UNDECIDED"

    invoke-direct {v0, v1, v5, v5}, Lcom/fusepowered/util/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/Gender;->UNDECIDED:Lcom/fusepowered/util/Gender;

    .line 8
    new-instance v0, Lcom/fusepowered/util/Gender;

    const-string v1, "WITHHELD"

    invoke-direct {v0, v1, v6, v6}, Lcom/fusepowered/util/Gender;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/Gender;->WITHHELD:Lcom/fusepowered/util/Gender;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fusepowered/util/Gender;

    sget-object v1, Lcom/fusepowered/util/Gender;->UNKNOWN:Lcom/fusepowered/util/Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/util/Gender;->MALE:Lcom/fusepowered/util/Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/util/Gender;->FEMALE:Lcom/fusepowered/util/Gender;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/util/Gender;->UNDECIDED:Lcom/fusepowered/util/Gender;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/util/Gender;->WITHHELD:Lcom/fusepowered/util/Gender;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fusepowered/util/Gender;->$VALUES:[Lcom/fusepowered/util/Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "genderCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/fusepowered/util/Gender;->genderCode:I

    .line 14
    return-void
.end method

.method public static getGenderByCode(I)Lcom/fusepowered/util/Gender;
    .locals 1
    .param p0, "genderCode"    # I

    .prologue
    .line 25
    packed-switch p0, :pswitch_data_0

    .line 37
    sget-object v0, Lcom/fusepowered/util/Gender;->UNKNOWN:Lcom/fusepowered/util/Gender;

    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    sget-object v0, Lcom/fusepowered/util/Gender;->UNKNOWN:Lcom/fusepowered/util/Gender;

    goto :goto_0

    .line 29
    :pswitch_1
    sget-object v0, Lcom/fusepowered/util/Gender;->MALE:Lcom/fusepowered/util/Gender;

    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v0, Lcom/fusepowered/util/Gender;->FEMALE:Lcom/fusepowered/util/Gender;

    goto :goto_0

    .line 33
    :pswitch_3
    sget-object v0, Lcom/fusepowered/util/Gender;->UNDECIDED:Lcom/fusepowered/util/Gender;

    goto :goto_0

    .line 35
    :pswitch_4
    sget-object v0, Lcom/fusepowered/util/Gender;->WITHHELD:Lcom/fusepowered/util/Gender;

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/Gender;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/util/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/util/Gender;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/util/Gender;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/util/Gender;->$VALUES:[Lcom/fusepowered/util/Gender;

    invoke-virtual {v0}, [Lcom/fusepowered/util/Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/Gender;

    return-object v0
.end method


# virtual methods
.method public getGenderCode()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/fusepowered/util/Gender;->genderCode:I

    return v0
.end method

.method public setGenderCode(I)V
    .locals 0
    .param p1, "genderCode"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/fusepowered/util/Gender;->genderCode:I

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    const-string v0, "{ \"Gender\" : { \"%s\" : %d} }"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/fusepowered/util/Gender;->getGenderCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
