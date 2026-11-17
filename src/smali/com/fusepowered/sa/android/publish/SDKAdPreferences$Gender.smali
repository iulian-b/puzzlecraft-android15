.class public final enum Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/SDKAdPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

.field public static final enum FEMALE:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

.field public static final enum MALE:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;


# instance fields
.field private gender:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    const-string v1, "MALE"

    const-string v2, "m"

    invoke-direct {v0, v1, v3, v2}, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;->MALE:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    new-instance v0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    const-string v1, "FEMALE"

    const-string v2, "f"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;->FEMALE:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    sget-object v1, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;->MALE:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;->FEMALE:Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;->$VALUES:[Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;->gender:Ljava/lang/String;

    return-void
.end method

.method public static parseString(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;
    .locals 5

    invoke-static {}, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;->values()[Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;->getGender()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;
    .locals 1

    const-class v0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;->$VALUES:[Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    invoke-virtual {v0}, [Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;

    return-object v0
.end method


# virtual methods
.method public getGender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/SDKAdPreferences$Gender;->getGender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
