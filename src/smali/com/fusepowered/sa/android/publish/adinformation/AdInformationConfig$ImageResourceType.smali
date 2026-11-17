.class public final enum Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

.field public static final enum INFO_EX_L:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

.field public static final enum INFO_EX_S:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

.field public static final enum INFO_L:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

.field public static final enum INFO_S:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;


# instance fields
.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v3, 0xe

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    const-string v1, "INFO_S"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->INFO_S:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    const-string v1, "INFO_EX_S"

    const/16 v2, 0x58

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->INFO_EX_S:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    const-string v1, "INFO_L"

    const/16 v2, 0x19

    const/16 v3, 0x15

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->INFO_L:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    const-string v1, "INFO_EX_L"

    const/16 v2, 0x82

    const/16 v3, 0x15

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->INFO_EX_L:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    sget-object v1, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->INFO_S:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->INFO_EX_S:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->INFO_L:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->INFO_EX_L:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->$VALUES:[Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->width:I

    iput p4, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->height:I

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;
    .locals 5

    sget-object v1, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->INFO_S:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    invoke-static {}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->values()[Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    aget-object v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;
    .locals 1

    const-class v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->$VALUES:[Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    invoke-virtual {v0}, [Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    return-object v0
.end method


# virtual methods
.method public getDefaultHeight()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->height:I

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    iget v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->width:I

    return v0
.end method
