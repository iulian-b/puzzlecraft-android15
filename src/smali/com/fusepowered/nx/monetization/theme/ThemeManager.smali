.class public Lcom/fusepowered/nx/monetization/theme/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# static fields
.field private static instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;


# instance fields
.field private theme:Lcom/fusepowered/nx/monetization/theme/Theme;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTheme()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    new-instance v1, Lcom/fusepowered/nx/monetization/theme/OriginalTheme;

    invoke-direct {v1}, Lcom/fusepowered/nx/monetization/theme/OriginalTheme;-><init>()V

    iput-object v1, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    .line 43
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/theme/Theme;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/theme/Theme;->initialize()V

    .line 46
    :cond_1
    return-void
.end method

.method private static ensureInstance()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    invoke-direct {v0}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;-><init>()V

    sput-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    .line 37
    :cond_0
    return-void
.end method

.method public static getAnimation(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "type"    # Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .prologue
    .line 92
    invoke-static {}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->ensureInstance()V

    .line 93
    invoke-static {}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->checkTheme()V

    .line 94
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    invoke-virtual {v0, p0}, Lcom/fusepowered/nx/monetization/theme/Theme;->getAnimation(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public static getColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;
    .locals 2
    .param p0, "type"    # Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .prologue
    .line 81
    invoke-static {}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->ensureInstance()V

    .line 82
    invoke-static {}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->checkTheme()V

    .line 83
    sget-object v1, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v1, v1, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    invoke-virtual {v1, p0}, Lcom/fusepowered/nx/monetization/theme/Theme;->getColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v0

    .line 84
    .local v0, "color":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 85
    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 87
    .end local v0    # "color":Ljava/lang/Integer;
    :cond_0
    return-object v0
.end method

.method public static getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "type"    # Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "type"    # Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;
    .param p1, "colorDrawableIfNull"    # Z

    .prologue
    .line 70
    invoke-static {}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->ensureInstance()V

    .line 71
    invoke-static {}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->checkTheme()V

    .line 72
    sget-object v1, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v1, v1, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    invoke-virtual {v1, p0}, Lcom/fusepowered/nx/monetization/theme/Theme;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 74
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 76
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v0
.end method

.method public static getTheme()Lcom/fusepowered/nx/monetization/theme/Theme;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->ensureInstance()V

    .line 59
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    return-object v0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/theme/Theme;->release()V

    .line 120
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    .line 122
    :cond_1
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/theme/Theme;->release()V

    goto :goto_0
.end method

.method public static setTheme(Lcom/fusepowered/nx/monetization/theme/Theme;)V
    .locals 1
    .param p0, "theme"    # Lcom/fusepowered/nx/monetization/theme/Theme;

    .prologue
    .line 50
    invoke-static {}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->ensureInstance()V

    .line 51
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    if-eq v0, p0, :cond_0

    .line 52
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iget-object v0, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    invoke-virtual {v0}, Lcom/fusepowered/nx/monetization/theme/Theme;->release()V

    .line 54
    :cond_0
    sget-object v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->instance:Lcom/fusepowered/nx/monetization/theme/ThemeManager;

    iput-object p0, v0, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->theme:Lcom/fusepowered/nx/monetization/theme/Theme;

    .line 55
    return-void
.end method

.method public static setViewBackground(Landroid/view/View;Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "type"    # Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;

    .prologue
    .line 100
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getDrawable(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 101
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {p1}, Lcom/fusepowered/nx/monetization/theme/ThemeManager;->getColor(Lcom/fusepowered/nx/monetization/theme/ThemeElementTypes;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
