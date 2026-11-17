.class public Lcom/fusepowered/l1/UserMetaData;
.super Ljava/lang/Object;
.source "UserMetaData.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mGender:Ljava/lang/String;

.field private mKeywords:Ljava/lang/String;

.field private mYearOfBirth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/fusepowered/l1/UserMetaData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fusepowered/l1/UserMetaData;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/fusepowered/l1/UserMetaData;->mKeywords:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/l1/UserMetaData;->mYearOfBirth:I

    .line 14
    iput-object v1, p0, Lcom/fusepowered/l1/UserMetaData;->mGender:Ljava/lang/String;

    .line 15
    return-void
.end method

.method getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fusepowered/l1/UserMetaData;->mGender:Ljava/lang/String;

    return-object v0
.end method

.method getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fusepowered/l1/UserMetaData;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method getYob()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/fusepowered/l1/UserMetaData;->mYearOfBirth:I

    return v0
.end method

.method setGender(Ljava/lang/String;)V
    .locals 3
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    iput-object p1, p0, Lcom/fusepowered/l1/UserMetaData;->mGender:Ljava/lang/String;

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string v0, "f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    :cond_1
    iput-object p1, p0, Lcom/fusepowered/l1/UserMetaData;->mGender:Ljava/lang/String;

    goto :goto_0

    .line 41
    :cond_2
    sget-object v0, Lcom/fusepowered/l1/UserMetaData;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Wrong gender value"

    sget-object v2, Lcom/fusepowered/l1/LogLevel;->DEBUG:Lcom/fusepowered/l1/LogLevel;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/l1/Utils;->log(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/l1/LogLevel;)V

    goto :goto_0
.end method

.method setKeywords(Ljava/lang/String;)V
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/fusepowered/l1/UserMetaData;->mKeywords:Ljava/lang/String;

    .line 19
    return-void
.end method

.method setYob(I)V
    .locals 0
    .param p1, "yob"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/fusepowered/l1/UserMetaData;->mYearOfBirth:I

    .line 27
    return-void
.end method
