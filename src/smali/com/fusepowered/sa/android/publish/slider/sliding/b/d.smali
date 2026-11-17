.class public Lcom/fusepowered/sa/android/publish/slider/sliding/b/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/d$c;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/d$b;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/d$a;
    }
.end annotation


# static fields
.field static final a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/d$c;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/d$c;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/d;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/d$a;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/d$b;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/d$b;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/d;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/d$a;

    goto :goto_0
.end method

.method public static a(II)I
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/d;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/d$a;

    invoke-interface {v0, p0, p1}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/d$a;->a(II)I

    move-result v0

    return v0
.end method
