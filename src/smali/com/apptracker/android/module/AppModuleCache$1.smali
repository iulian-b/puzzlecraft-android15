.class Lcom/apptracker/android/module/AppModuleCache$1;
.super Ljava/lang/Object;
.source "db"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/module/AppModuleCache;->getAvailableAdFromCache(Ljava/lang/String;)Lcom/apptracker/android/module/AppAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/module/AppModuleCache$1;->m:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p1, "arg0"    # Ljava/io/File;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 193
    const-string v1, "!"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/apptracker/android/module/AppModuleCache$1;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    aget-object v2, v1, v4

    const-string v3, "ad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v1, v1, v4

    const-string v2, "vi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
