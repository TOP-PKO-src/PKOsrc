/*
-----------------------------------------------------------------------------
This source file is part of OGRE
    (Object-oriented Graphics Rendering Engine)
For the latest info, see http://www.ogre3d.org/
 
Copyright (c) 2000-2006 Torus Knot Software Ltd
Also see acknowledgements in Readme.html
 
This program is free software; you can redistribute it and/or modify it under
the terms of the GNU Lesser General Public License as published by the Free Software
Foundation; either version 2 of the License, or (at your option) any later
version.
 
This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
 
You should have received a copy of the GNU Lesser General Public License along with
this program; if not, write to the Free Software Foundation, Inc., 59 Temple
Place - Suite 330, Boston, MA 02111-1307, USA, or go to
http://www.gnu.org/copyleft/lesser.txt.

You may alternatively use this source under the terms of a specific version of
the OGRE Unrestricted License provided you have obtained such a license from
Torus Knot Software Ltd.
-----------------------------------------------------------------------------
*/

#ifndef __GLXWindow_H__
#define __GLXWindow_H__

#include "OgreRenderWindow.h"
#include "OgreGLXContext.h"

#include <X11/Xlib.h>
#include <X11/keysym.h>
#include <GL/glx.h>
#include <GL/glxext.h>

namespace Ogre 
{
	class _OgrePrivate GLXWindow : public RenderWindow
	{
	private:
		::Display *mDisplay;		//Pointer to X connection
		::Window mWindow;		//X Window
		::Atom mAtomDeleteWindow;	//Used for handling X window closing
		::GLXContext mGlxContext;
		::XVisualInfo* mVisualInfo;
		bool mDelVisualInfo;
		bool mDelWindow;

		bool mClosed;			//Window has been closed
		bool mVisible;			//Window is visible
		bool mTopLevel;			//This is false if the Ogre window is embedded
		int mOldMode;			//Mode before switching to fullscreen

		GLXContext   *mContext;
	public:
		// Pass X display to create this window on
		GLXWindow(Display *display);
		~GLXWindow();

		void create(const String& name, unsigned int width, unsigned int height,
			    bool fullScreen, const NameValuePairList *miscParams);

		/** @copydoc see RenderWindow::destroy */
		void destroy(void);

		/** @copydoc see RenderWindow::isActive */
		bool isActive(void) const;

		/** @copydoc see RenderWindow::isClosed */
		bool isClosed(void) const;

		/** @copydoc see RenderWindow::isVisible */
		bool isVisible(void) const;

		/** @copydoc see RenderWindow::setVisible */
		void setVisible(bool visible);

		/** @copydoc see RenderWindow::reposition */
		void reposition(int left, int top);

		/** @copydoc see RenderWindow::resize */
		void resize(unsigned int width, unsigned int height);

		/** @copydoc see RenderWindow::windowMovedOrResized */
		void windowMovedOrResized();

		/** @copydoc see RenderWindow::swapBuffers */
		void swapBuffers(bool waitForVSync);
	
		/** @copydoc see RenderTarget::writeContentsToFile */
		void writeContentsToFile(const String& filename);

		/**
		@remarks
			* Get custom attribute; the following attributes are valid:
			* WINDOW	The X Window associated with this
			* DISPLAY	The X Display associated with this
			* ATOM		The Delete Window signal
		*/
		void getCustomAttribute(const String& name, void* pData);

		bool requiresTextureFlipping() const { return false; }
	};
}

#endif
