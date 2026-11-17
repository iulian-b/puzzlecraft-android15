.class public Lcom/fusepowered/sa/android/publish/f/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/fusepowered/sa/android/publish/f/h;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/sa/android/publish/f/h;->a:Lcom/fusepowered/sa/android/publish/f/h;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "e106"

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/f/h;->c:Ljava/lang/String;

    new-instance v0, Lcom/fusepowered/sa/android/publish/f/h$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/f/h$1;-><init>(Lcom/fusepowered/sa/android/publish/f/h;)V

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/f/h;->d:Landroid/telephony/PhoneStateListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/f/h;->b:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/f/h;->d:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static a()Lcom/fusepowered/sa/android/publish/f/h;
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/f/h;->a:Lcom/fusepowered/sa/android/publish/f/h;

    return-object v0
.end method

.method static synthetic a(Lcom/fusepowered/sa/android/publish/f/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/f/h;->c:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/fusepowered/sa/android/publish/f/h;->a:Lcom/fusepowered/sa/android/publish/f/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fusepowered/sa/android/publish/f/h;

    invoke-direct {v0, p0}, Lcom/fusepowered/sa/android/publish/f/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fusepowered/sa/android/publish/f/h;->a:Lcom/fusepowered/sa/android/publish/f/h;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusepowered/sa/android/publish/f/i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/f/h;->c:Ljava/lang/String;

    goto :goto_0
.end method
