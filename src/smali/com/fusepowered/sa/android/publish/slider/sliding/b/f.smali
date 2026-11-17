.class public Lcom/fusepowered/sa/android/publish/slider/sliding/b/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/f$c;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/f$b;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/f$a;,
        Lcom/fusepowered/sa/android/publish/slider/sliding/b/f$d;
    }
.end annotation


# static fields
.field static final a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/f$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/f$c;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/f$c;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/f;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/f$d;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/f$a;

    invoke-direct {v0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/f$a;-><init>()V

    sput-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/f;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/f$d;

    goto :goto_0
.end method

.method public static a(Landroid/view/KeyEvent;)V
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/slider/sliding/b/f;->a:Lcom/fusepowered/sa/android/publish/slider/sliding/b/f$d;

    invoke-interface {v0, p0}, Lcom/fusepowered/sa/android/publish/slider/sliding/b/f$d;->a(Landroid/view/KeyEvent;)V

    return-void
.end method
