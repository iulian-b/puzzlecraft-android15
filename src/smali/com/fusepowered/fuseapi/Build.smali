.class public Lcom/fusepowered/fuseapi/Build;
.super Ljava/lang/Object;
.source "Build.java"


# static fields
.field public static final API_MAJOR_VERSION:I = 0x2

.field public static final API_MINORER_VERSION:I = 0x0

.field public static final API_MINOR_VERSION:I = 0x2

.field public static final API_TYPE:Ljava/lang/String; = "base"

.field public static final API_VERSION:Ljava/lang/String; = "2.2.0"

.field public static final BUILD_VERSION:Ljava/lang/String; = "70"

.field public static final FUSE_SERVER:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

.field public static final LOGGING_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->PROD:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    sput-object v0, Lcom/fusepowered/fuseapi/Build;->FUSE_SERVER:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
