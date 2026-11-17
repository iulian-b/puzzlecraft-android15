.class public Lcom/apptracker/android/util/AppConstants;
.super Ljava/lang/Object;
.source "d"


# static fields
.field public static final A:Ljava/lang/String; = "ev."

.field public static final B:Ljava/lang/String; = "connection timeout"

.field public static final C:Ljava/lang/String; = "storage error"

.field public static final D:Ljava/lang/String; = "video error"

.field public static final E:[Ljava/lang/String;

.field public static final F:I = 0x1baf80

.field public static final G:Ljava/lang/String; = "error"

.field public static final H:I = 0x11

.field public static final I:Ljava/lang/String; = "/AppData/"

.field public static final J:I = 0x1388

.field public static final K:Ljava/lang/String; = ":"

.field public static final L:Ljava/lang/String; = "data error"

.field public static final M:I = 0x1

.field public static final N:Ljava/lang/String; = "data error"

.field public static final O:Ljava/lang/String; = "2"

.field public static final P:Ljava/lang/String; = "+=+=+=+="

.field public static final Q:I = 0x3

.field public static final R:Ljava/lang/String; = "APTr"

.field public static final S:I = 0x3c

.field public static final T:Ljava/lang/String; = "AppData_"

.field public static final V:Ljava/lang/String; = "afclose"

.field public static final W:I = 0xbb8

.field public static final X:Ljava/lang/String; = "am."

.field public static final Y:Ljava/lang/String; = "install"

.field public static final Z:Ljava/lang/String; = "=;+;="

.field public static final a:Ljava/lang/String; = "in."

.field public static final b:I = 0x1

.field public static final c:Ljava/lang/String; = "rg."

.field public static final d:Ljava/lang/String; = "ev"

.field public static final e:Ljava/lang/String; = "welcome"

.field public static final f:Ljava/lang/String; = "appmodule"

.field public static final g:Ljava/lang/String; = "network error"

.field public static final h:Ljava/lang/String; = "AppTracker"

.field public static final i:Ljava/lang/String; = "CrashData_"

.field public static final j:Ljava/lang/String; = "crash"

.field public static final k:Ljava/lang/String; = "5"

.field public static final l:Ljava/lang/String; = "tiJ8e+8Fb^21xd|5"

.field public static final m:Ljava/lang/String; = "ActionData_"

.field public static final n:I = 0x4

.field public static final o:I = 0x0

.field public static final q:Ljava/lang/String; = "ad download ok"

.field public static final r:I = 0x2710

.field public static final s:Ljava/lang/String; = "ad not ready"

.field public static final t:Ljava/lang/String; = "no fill"

.field public static final v:Ljava/lang/String; = "cr."

.field public static final w:Ljava/lang/String; = "rg"

.field public static final x:I = 0x3a98

.field public static final y:Ljava/lang/String; = "http://"

.field public static final z:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u0003?\u0012<\u0007=\u0014*\u0010b\u0003?L,\r\"M;M"

    invoke-static {v2}, Lcom/apptracker/android/util/AppExceptionHandler;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "XAIB\\COTK\u001cZA\u0017RV\\\u0016E\u0016"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/apptracker/android/util/AppConstants;->E:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
