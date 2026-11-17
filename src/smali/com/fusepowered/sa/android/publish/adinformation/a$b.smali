.class public final enum Lcom/fusepowered/sa/android/publish/adinformation/a$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/sa/android/publish/adinformation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/sa/android/publish/adinformation/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

.field public static final enum b:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

.field private static final synthetic c:[Lcom/fusepowered/sa/android/publish/adinformation/a$b;


# instance fields
.field private infoExtendedType:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

.field private infoType:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    const-string v1, "SMALL"

    sget-object v2, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->INFO_S:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    sget-object v3, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->INFO_EX_S:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/fusepowered/sa/android/publish/adinformation/a$b;-><init>(Ljava/lang/String;ILcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->a:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    new-instance v0, Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    const-string v1, "LARGE"

    sget-object v2, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->INFO_L:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    sget-object v3, Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;->INFO_EX_L:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/fusepowered/sa/android/publish/adinformation/a$b;-><init>(Ljava/lang/String;ILcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->b:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    sget-object v1, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->a:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->b:Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->c:[Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;",
            "Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->infoType:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    iput-object p4, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->infoExtendedType:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/sa/android/publish/adinformation/a$b;
    .locals 1

    const-class v0, Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/sa/android/publish/adinformation/a$b;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->c:[Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    invoke-virtual {v0}, [Lcom/fusepowered/sa/android/publish/adinformation/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/sa/android/publish/adinformation/a$b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->infoType:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    return-object v0
.end method

.method public b()Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;
    .locals 1

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/adinformation/a$b;->infoExtendedType:Lcom/fusepowered/sa/android/publish/adinformation/AdInformationConfig$ImageResourceType;

    return-object v0
.end method
