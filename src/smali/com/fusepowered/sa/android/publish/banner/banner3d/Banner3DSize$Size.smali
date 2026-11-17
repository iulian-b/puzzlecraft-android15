.class public final enum Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

.field public static final enum LARGE:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

.field public static final enum MEDIUM:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

.field public static final enum SMALL:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

.field public static final enum XLARGE:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

.field public static final enum XSMALL:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

.field public static final enum XXSMALL:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;


# instance fields
.field private convertedSize:Lcom/fusepowered/sa/android/publish/banner/a;

.field private size:Lcom/fusepowered/sa/android/publish/banner/a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v4, 0x32

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    const-string v1, "XXSMALL"

    new-instance v2, Lcom/fusepowered/sa/android/publish/banner/a;

    const/16 v3, 0x118

    invoke-direct {v2, v3, v4}, Lcom/fusepowered/sa/android/publish/banner/a;-><init>(II)V

    invoke-direct {v0, v1, v6, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;-><init>(Ljava/lang/String;ILcom/fusepowered/sa/android/publish/banner/a;)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->XXSMALL:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    const-string v1, "XSMALL"

    new-instance v2, Lcom/fusepowered/sa/android/publish/banner/a;

    const/16 v3, 0x12c

    invoke-direct {v2, v3, v4}, Lcom/fusepowered/sa/android/publish/banner/a;-><init>(II)V

    invoke-direct {v0, v1, v7, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;-><init>(Ljava/lang/String;ILcom/fusepowered/sa/android/publish/banner/a;)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->XSMALL:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    const-string v1, "SMALL"

    new-instance v2, Lcom/fusepowered/sa/android/publish/banner/a;

    const/16 v3, 0x140

    invoke-direct {v2, v3, v4}, Lcom/fusepowered/sa/android/publish/banner/a;-><init>(II)V

    invoke-direct {v0, v1, v8, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;-><init>(Ljava/lang/String;ILcom/fusepowered/sa/android/publish/banner/a;)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->SMALL:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    const-string v1, "MEDIUM"

    new-instance v2, Lcom/fusepowered/sa/android/publish/banner/a;

    const/16 v3, 0x1d4

    const/16 v4, 0x3c

    invoke-direct {v2, v3, v4}, Lcom/fusepowered/sa/android/publish/banner/a;-><init>(II)V

    invoke-direct {v0, v1, v9, v2}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;-><init>(Ljava/lang/String;ILcom/fusepowered/sa/android/publish/banner/a;)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->MEDIUM:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    const-string v1, "LARGE"

    const/4 v2, 0x4

    new-instance v3, Lcom/fusepowered/sa/android/publish/banner/a;

    const/16 v4, 0x2d8

    const/16 v5, 0x5a

    invoke-direct {v3, v4, v5}, Lcom/fusepowered/sa/android/publish/banner/a;-><init>(II)V

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;-><init>(Ljava/lang/String;ILcom/fusepowered/sa/android/publish/banner/a;)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->LARGE:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    const-string v1, "XLARGE"

    const/4 v2, 0x5

    new-instance v3, Lcom/fusepowered/sa/android/publish/banner/a;

    const/16 v4, 0x400

    const/16 v5, 0x5a

    invoke-direct {v3, v4, v5}, Lcom/fusepowered/sa/android/publish/banner/a;-><init>(II)V

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;-><init>(Ljava/lang/String;ILcom/fusepowered/sa/android/publish/banner/a;)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->XLARGE:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    sget-object v1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->XXSMALL:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->XSMALL:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->SMALL:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    aput-object v1, v0, v8

    sget-object v1, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->MEDIUM:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->LARGE:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->XLARGE:Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->$VALUES:[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/fusepowered/sa/android/publish/banner/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/sa/android/publish/banner/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->convertedSize:Lcom/fusepowered/sa/android/publish/banner/a;

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->size:Lcom/fusepowered/sa/android/publish/banner/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;
    .locals 1

    const-class v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->$VALUES:[Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    invoke-virtual {v0}, [Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;

    return-object v0
.end method


# virtual methods
.method public getConvertedSize(Landroid/content/Context;)Lcom/fusepowered/sa/android/publish/banner/a;
    .locals 3

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->convertedSize:Lcom/fusepowered/sa/android/publish/banner/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/banner/a;

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/sa/android/publish/banner/a;->a()I

    move-result v1

    invoke-static {p1, v1}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->getSize()Lcom/fusepowered/sa/android/publish/banner/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/sa/android/publish/banner/a;->b()I

    move-result v2

    invoke-static {p1, v2}, Lcom/fusepowered/sa/android/publish/f/n;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/sa/android/publish/banner/a;-><init>(II)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->convertedSize:Lcom/fusepowered/sa/android/publish/banner/a;

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->convertedSize:Lcom/fusepowered/sa/android/publish/banner/a;

    return-object v0
.end method

.method public getSize()Lcom/fusepowered/sa/android/publish/banner/a;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/banner/banner3d/Banner3DSize$Size;->size:Lcom/fusepowered/sa/android/publish/banner/a;

    return-object v0
.end method
