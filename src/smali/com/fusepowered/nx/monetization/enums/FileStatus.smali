.class public final enum Lcom/fusepowered/nx/monetization/enums/FileStatus;
.super Ljava/lang/Enum;
.source "FileStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/nx/monetization/enums/FileStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/nx/monetization/enums/FileStatus;

.field public static final enum STATUS_DELETED:Lcom/fusepowered/nx/monetization/enums/FileStatus;

.field public static final enum STATUS_DOWNLOADING:Lcom/fusepowered/nx/monetization/enums/FileStatus;

.field public static final enum STATUS_FAILED:Lcom/fusepowered/nx/monetization/enums/FileStatus;

.field public static final enum STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

.field public static final enum STATUS_PENDING:Lcom/fusepowered/nx/monetization/enums/FileStatus;

.field public static final enum STATUS_READY:Lcom/fusepowered/nx/monetization/enums/FileStatus;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;

    const-string v1, "STATUS_PENDING"

    const-string v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/fusepowered/nx/monetization/enums/FileStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .line 6
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;

    const-string v1, "STATUS_DOWNLOADING"

    const-string v2, "2"

    invoke-direct {v0, v1, v5, v2}, Lcom/fusepowered/nx/monetization/enums/FileStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_DOWNLOADING:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .line 8
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;

    const-string v1, "STATUS_INUSE"

    const-string v2, "4"

    invoke-direct {v0, v1, v6, v2}, Lcom/fusepowered/nx/monetization/enums/FileStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .line 9
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;

    const-string v1, "STATUS_FAILED"

    const-string v2, "5"

    invoke-direct {v0, v1, v7, v2}, Lcom/fusepowered/nx/monetization/enums/FileStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_FAILED:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .line 10
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;

    const-string v1, "STATUS_READY"

    const-string v2, "6"

    invoke-direct {v0, v1, v8, v2}, Lcom/fusepowered/nx/monetization/enums/FileStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_READY:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .line 11
    new-instance v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;

    const-string v1, "STATUS_DELETED"

    const/4 v2, 0x5

    const-string v3, "7"

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/nx/monetization/enums/FileStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fusepowered/nx/monetization/enums/FileStatus;

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_PENDING:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_DOWNLOADING:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_INUSE:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_FAILED:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_READY:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/nx/monetization/enums/FileStatus;->STATUS_DELETED:Lcom/fusepowered/nx/monetization/enums/FileStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;->$VALUES:[Lcom/fusepowered/nx/monetization/enums/FileStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/fusepowered/nx/monetization/enums/FileStatus;->id:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/nx/monetization/enums/FileStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;

    return-object v0
.end method

.method public static values()[Lcom/fusepowered/nx/monetization/enums/FileStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/nx/monetization/enums/FileStatus;->$VALUES:[Lcom/fusepowered/nx/monetization/enums/FileStatus;

    invoke-virtual {v0}, [Lcom/fusepowered/nx/monetization/enums/FileStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/nx/monetization/enums/FileStatus;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/enums/FileStatus;->id:Ljava/lang/String;

    return-object v0
.end method
