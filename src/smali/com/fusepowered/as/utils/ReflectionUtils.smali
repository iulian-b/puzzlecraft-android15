.class public Lcom/fusepowered/as/utils/ReflectionUtils;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canFindClass(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 8
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 10
    :catch_0
    move-exception v0

    .line 12
    const/4 v0, 0x0

    goto :goto_0
.end method
